package com.websystique.springboot.hospitalList;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

//import Jwiki.Jwiki;

@Service
public class HospitalListService {

	@Autowired
	private HospitalListRepository hospitalListRepository;

	/*
	 * private LiRst<Hospital> hospitals = new ArrayList()<>(Arrays.asList( new
	 * Hospital("aims", "apollo delhi", "heart surgeons"), new Hospital("jp",
	 * "noida", "best ranked."), new Hospital("apollo", "bangalore",
	 * "pharmacy and hospital") ));
	 */

	public List<Hospital> getAllHospitals() {
		return (List<Hospital>) this.hospitalListRepository.findAll();
	}

	public Hospital getHospital(int id) {
		Hospital h = hospitalListRepository.findOne(id);

		return h;
	}

	public void addHospital(Hospital hospital) {
		// this.hospitalListRepository.save(hospital);
	}

	public String blogNews() throws JsonProcessingException, IOException {
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.getMessageConverters().add(0, new StringHttpMessageConverter(Charset.forName("UTF-8")));
		String newsUrl = "http://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=32d1c7cea20c442caa5a84f72ae676cf";
		ResponseEntity<String> response = restTemplate.getForEntity(newsUrl, String.class);
		// assertThat(response.getStatusCode(), equalTo(HttpStatus.OK));
		ObjectMapper mapper = new ObjectMapper();
		JsonNode root = mapper.readTree(response.getBody());
		System.out.println(root.toString());
		return root.toString();
	}

	public List<Hospital> getHospitalByState(String state) {
		return hospitalListRepository.findByState(state);
	}

	public List<Hospital> getHospitalByStateCity(String state, String city) {
		System.out.println("city received" + city);
		// TODO Auto-generated method stub

		List<Hospital> hl = new ArrayList<Hospital>();
		hl = hospitalListRepository.findByStateCity(state, city);
		if (hl == null || hl.isEmpty())
			hl = hospitalListRepository.findByState(state);
		return hl;

	}

	public Map<String, String> getHospitalInfo(String keyword) throws IOException {
		// TODO Auto-generated method stub
         keyword=keyword.replace("\"", " ");
		 String hospitalName = "";
		HashMap<String, String> map = new HashMap<>();
		try {
			RestTemplate restTemplate = new RestTemplate();
			restTemplate.getMessageConverters().add(0, new StringHttpMessageConverter(Charset.forName("UTF-8")));
			String wikiUrl = "https://en.wikipedia.org/w/api.php?action=query&prop=extracts&origin=*&format=json&generator=search&gsrnamespace=0&gsrlimit=1&gsrsearch="
					+ keyword;
			System.out.println("wikiurl"+wikiUrl);
			ResponseEntity<String> response = restTemplate.getForEntity(wikiUrl, String.class);
			// assertThat(response.getStatusCode(), equalTo(HttpStatus.OK));
			ObjectMapper mapper = new ObjectMapper();
			JsonNode root = mapper.readTree(response.getBody());

			JsonNode pages = root.get("query").get("pages");

			pages.forEach(s -> {
				
			      map.put("Hospital",s.get("title").asText());
			     
			      map.put("HospitalInfo",s.get("extract").asText());
				
			});

			System.out.println(pages);
	//		System.out.println(array);
			// System.out.println(root.get("query").get("pages"));
			
         
			// hospitalName= root.get(1).get(0).toString().replaceAll("^\"|\"$", "");
			hospitalName= map.get("Hospital");
			if(!map.get("HospitalInfo").contains("hospital"))
				return null;
			System.out.println("Hospital" + hospitalName);
			

		} catch (RestClientException e) {

			e.printStackTrace();
		} catch (JsonProcessingException e) {

			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		/* --------------- */

//		try {
//			Jwiki jwiki = new Jwiki(hospitalName);
//			if (jwiki != null && jwiki.getDisplayTitle() != null) {
//				map.put("Hospital", jwiki.getDisplayTitle());
//				//System.out.println("Title :" + jwiki.getDisplayTitle());
//			}
//			// get title
//			if (jwiki != null && jwiki.getExtractText() != null) {
//				map.put("Description", jwiki.getExtractText());
//			//	System.out.println("Text : " + jwiki.getExtractText());
//			} // get summary text
//			if (jwiki != null && jwiki.getImageURL() != null) {
//				map.put("Image", jwiki.getImageURL());
//			//	System.out.println("Image : " + jwiki.getImageURL());
//			} // get
//		} catch (Exception e) {
//
//		}

		Response res = Jsoup.connect("http://en.wikipedia.org/wiki/" + hospitalName).execute();
		String html = res.body();
		Document doc2 = Jsoup.parseBodyFragment(html);
		Element body = doc2.body();
		Elements tables = body.getElementsByTag("table");

		for (Element table : tables) {
			if (table.className().contains("infobox") == true) {

				for (Element row : table.select("tr")) {

					Elements ths = row.select("th");

					Elements tds = row.select("td");
					if (tds.isEmpty() || ths.isEmpty())
						continue;
				//	System.out.print(ths.text() + ":");
				//	System.out.println(tds.get(0).text());

					map.put(ths.text(), tds.get(0).text());
				}

				// System.out.println(table.outerHtml());
				break;
			}
		}
		return map;
	}
	
	public String getGooglePlaces(String name) throws JsonProcessingException, IOException {
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.getMessageConverters().add(0, new StringHttpMessageConverter(Charset.forName("UTF-8")));
		String url = "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=" +name+ "max%20hospital%20noida&inputtype=textquery&fields=place_id,business_status,formatted_address,geometry,icon,name,permanently_closed,photo,place_id,plus_code&key=AIzaSyAsPZNGc8rcRHSnPn2Z2dRR8VIHLgUhmoc";
		ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);
		// assertThat(response.getStatusCode(), equalTo(HttpStatus.OK));
		ObjectMapper mapper = new ObjectMapper();
		JsonNode root = mapper.readTree(response.getBody());
		System.out.println(root.toString());
		return root.toString();
	}
	
	public String getGooglePlacesDetail(String placeId) throws JsonProcessingException, IOException {
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.getMessageConverters().add(0, new StringHttpMessageConverter(Charset.forName("UTF-8")));
		String url = "https://maps.googleapis.com/maps/api/place/details/json?place_id="+placeId+"&fields=rating,reviews,address_component,adr_address,business_status,formatted_address,geometry,icon,name,permanently_closed,photo,place_id,plus_code,type,url&key=AIzaSyAsPZNGc8rcRHSnPn2Z2dRR8VIHLgUhmoc";
		ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);
		// assertThat(response.getStatusCode(), equalTo(HttpStatus.OK));
		ObjectMapper mapper = new ObjectMapper();
		JsonNode root = mapper.readTree(response.getBody());
		System.out.println(root.toString());
		return root.toString();   
	}
	
	public String getGooglePhoto(String url) throws JsonProcessingException, IOException {
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.getMessageConverters().add(0, new StringHttpMessageConverter(Charset.forName("UTF-8")));
		ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);
		// assertThat(response.getStatusCode(), equalTo(HttpStatus.OK));
		ObjectMapper mapper = new ObjectMapper();
		JsonNode root = mapper.readTree(response.getBody());
		System.out.println(root.toString());
		return root.toString();
	}

}
