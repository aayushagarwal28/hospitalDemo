var app = angular.module('crudApp', []);

app.controller('UserController', function( $scope, $rootScope, $window) {
  $scope.menu = {menu1: "Home", menu2: "Top Hospitals", menu3: "Doctor's Review", menu4: "Blogs"};
  $scope.treatmentType = "";
  $scope.treatmentTypeList = [{id: "1",catId: "1", value: "Spinal fusion"},{id: "2",catId: "1", value: "Laminectomy"},{id: "3",catId: "2", value: "Coronary Angiogram"},{id: "4",catId: "2", value: "Angioplasty (one stent)"},{id: "5",catId: "2", value: "Bypass Surgery (CABG -coronary artery bypass graft)"},{id: "6",catId: "2", value: "Congenital heart defects - ASD/VSD Closure"},{id: "7",catId: "2", value: "Valve replacement - AVR/MVR (including valves)"},{id: "8",catId: "2", value: "Double valve replacement (DVR, including two valves)"},{id: "9",catId: "2", value: "Valve replacement (Avr/Mvr - Minimal Invasive procedure)"},{id: "10",catId: "2", value: "Bentall's Surgery"},{id: "11",catId: "2", value: "Heart transplant"},{id: "12",catId: "2", value: "Permanent Pacemaker Implant (Single Chamber) - with device"},{id: "13",catId: "2", value: "Permanent Pacemaker Implant (Double Chamber)"},{id: "14",catId: "2", value: "Radio frequency (RF) Ablation-heart rhythm correction"},{id: "15",catId: "2", value: "bdominal aortic aneurysm (AAA)"},{id: "16",catId: "3", value: "Rhinoplasty (Nose)"},{id: "17",catId: "3", value: "Abdominoplasty (Tummy Tuck)"},{id: "18",catId: "3", value: "Breast Lift"},{id: "19",catId: "3", value: "Breast Augmentation (with implants)"},{id: "20",catId: "3", value: "Face lift - Face, neck and upper and lower eyelids"},{id: "21",catId: "3", value: "Face lift (Face and neck)"},{id: "22",catId: "3", value: "Cheiloplasty (Lip Reduction)"},{id: "23",catId: "4", value: "Dental implant - Each"},{id: "24",catId: "4", value: "CROWN full ceramic"},{id: "25",catId: "4", value: "Root Canal treatment"},{id: "26",catId: "4", value: "Facial cosmetic restoration"},{id: "27",catId: "5", value: "Cochlear implant"},{id: "28",catId: "5", value: "Laryngectomy (removal of the larynx)"},{id: "29",catId: "5", value: "FESS (Sinus)"},{id: "30",catId: "5", value: "Tympanoplasty (reconstruction of the eardrum)"},{id: "31",catId: "6", value: "Cataract surgery with lens"},{id: "32",catId: "6", value: "Cataract surgery with lens"},{id: "33",catId: "6", value: "Retinal detachment"},{id: "34",catId: "6", value: "Glaucoma"},,{id: "35",catId: "6", value: "Corneal transplant"},{id: "36",catId: "6", value: "Vitrectomy"},{id: "37",catId: "7", value: "Cholecystectomy-Laparoscopic"},{id: "38",catId: "7", value: "Inguinal Hernioplasty"},{id: "39",catId: "8", value: "Lap Hysterectomy"},{id: "40",catId: "8", value: "Myomectomy-hysteroscopic"},{id: "41",catId: "9", value: "IVF Package"},{id: "42",catId: "10", value: "Knee Replacement (Single) - with implants"},{id: "43",catId: "10", value: "Knee Replacement (Double) - with implants"},{id: "44",catId: "10", value: "Hip Replacement (Single) - with implant"},{id: "45",catId: "10", value: "Hip Replacement (Double) - with implants"},{id: "46",catId: "10", value: "ACL Reconstruction"},{id: "47",catId: "11", value: "Nephrectomy (removal of kidney)"},{id: "48",catId: "12", value: "Deep Brain Stimulation for Parkinsons"},{id: "49",catId: "12", value: "Peripheral Nerve Surgery	"},{id: "50",catId: "13", value: "Image Guided Radiation Therapy (IGRT)"},{id: "51",catId: "13", value: "Intensity-modulated radiation therapy (IMRT)"},{id: "52",catId: "13", value: "SRS - Stereotactic Radiosurgery(SRS)"},{id: "53",catId: "13", value: "Chemotherapy (per cycle)"},{id: "54",catId: "13", value: "PET-CT Scan"},{id: "55",catId: "13", value: "Breast Cancer Surgery"},{id: "56",catId: "13", value: "Prostrate Cancer Surgery"},{id: "57",catId: "14", value: "Colonoscopy"},{id: "58",catId: "14", value: "Endoscopy"},{id: "59",catId: "14", value: "Capsule Endoscopy"},{id: "60",catId: "15", value: "HBO therapy (Hyperbaric Oxygen)"},{id: "61",catId: "16", value: "Liver transplant"},{id: "62",catId: "16", value: "Kidney transplant"},{id: "63",catId: "16", value: "Bone marrow transplant: allogenic"},{id: "64",catId: "16", value: "Bone marrow transplant: autologous"},{id: "65",catId: "16", value: "Lung transplant"},{id: "66",catId: "16", value: "Heart transplant"},{id: "67",catId: "17", value: "TURP (Transurethral resection of the prostate)"},{id: "68",catId: "17", value: "BNI (Bladder Neck Incision)"},{id: "69",catId: "18", value: "Gastric bypass"},{id: "70",catId: "18", value: "Gastric banding"},{id: "71",catId: "18", value: "Sleeve Gastrectomy"},{id: "72",catId: "3", value: "Breast Reduction"},{id: "73",catId: "3", value: "Coronary Angiogram"},{id: "74",catId: "7", value: "Appendectomy-Laparoscopic"}];
  $scope.categoryList = [{id: "1", value: "Bone and spine"},{id: "2", value: "Cardiology / Cardiothoracic surgery"}, {id: "3", value: "Cosmetic"}, {id: "4", value: "Dental"}, {id: "5", value: "ENT"}, {id: "6", value: "Eye"}, {id: "7", value: "General surgery"}, {id: "8", value: "Gynecology"}, {id: "9", value: "Infertility"}, {id: "10", value: "Joint replacement"}, {id: "11", value: "Nephro"}, {id: "12", value: "Neurosciences"}, {id: "13", value: "Oncology (cancer) treatments"}, {id: "14", value: "Tests"}, {id: "15", value: "Therapy"}, {id: "16", value: "Transplants"}, {id: "17", value: "Urology"}, {id: "18", value: "Weight loss / bariatric surgeries"}];
  $scope.category = "";
  $scope.diabetes = "No";
  $scope.location = "";
  $scope.locationFlexibility = "";
  $scope.searchKeyword = "";
  $scope.hospitalSearch = [];
  $scope.blog = $window.blogNews;
  $scope.searchFlag = false;
  $scope.showFlag = false;
  $scope.getEstimateFlag = false;
  $scope.stateName = "";
  $scope.stateList = ["Andaman and Nicobar Islands","Andhra Pradesh","Bihar","Chandigarh","Chhattisgarh","Dadra and Nagar Haveli","Daman and Diu","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Madhya Pradesh","Maharashtra","Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Puducherry", "Punjab", "Rajasthan", "Tamil Nadu", "Telangana", "Uttar Pradesh", "Uttarakhand", "West Bengal"];
  $scope.hospitalInfo = [{name:"Indraprasth Apollo", rating: 3, riskLevel: 0, hospitalTScore: 90, minAmount: 5000, maxAmount: 7000, rank: 1, location: "Near Jasola Apollo metro station, Jasola, New Delhi", special: "Quality Treatment"},{name:"AIIMS", rating: 4, riskLevel: 0, hospitalTScore: 90, minAmount: 6000, maxAmount: 9000, rank: 2, location: "AIIMS metro station, South extn-2, New Delhi", special: "Emergency services"}];
  $scope.hospitalSearchResults = [];
  $scope.hospitalEstimateResults = [];
  $scope.hospitalStaticRank = 4;
  $scope.userIp="";
  $scope.detectedCity="";
  $scope.detectedState="";
  $scope.estimate = [{id: "1", min: "381000", max: "825500", days: "5"},{id: "2", min: "127000", max: "412750", days: "6"},{id: "3", min: "15875", max: "63500", days: "1"},{id: "4", min: "190500", max: "412750", days: "1-2"},{id: "5", min: "190500", max: "603250", days: "4-6"},{id: "6", min: "190500", max: "635000", days: "2-5"},{id: "7", min: "381000", max: "762000", days: "2-5"},{id: "8", min: "304800", max: "793750", days: "10"},{id: "9", min: "495300", max: "520700", days: "2-5"},{id: "10", min: "381000", max: "762000", days: "2-5"},{id: "11", min: "1460500", max: "2540000", days: "8-15"},{id: "12", min: "158750", max: "285750", days: "2-3"},{id: "13", min: "114300", max: "317500", days: "2-3"},{id: "14", min: "63500", max: "317500", days: "2-3"},{id: "15", min: "412750", max: "508000", days: "5-10"},{id: "16", min: "95250", max: "317500", days: "2"},{id: "17", min: "127000", max: "381000", days: "1-4"},{id: "18", min: "184150", max: "412750", days: "1"},{id: "19", min: "95250", max: "444500", days: "1-2"},{id: "20", min: "158750", max: "412750", days: "1-2"},{id: "21", min: "381000", max: "508000", days: "1"},{id: "22", min: "50800", max: "63500", days: "1"},{id: "23", min: "63500", max: "127000", days: "1"},{id: "24", min: "8890", max: "15240", days: "1"},{id: "25", min: "7620", max: "12700", days: "3-4"},{id: "26", min: "95250", max: "381000", days: "1"},{id: "27", min: "825500", max: "1460500", days: "3"},{id: "28", min: "285750", max: "571500", days: "2"},{id: "29", min: "114300", max: "222250", days: "2"},{id: "30", min: "76200", max: "222250", days: "2-3"},{id: "31", min: "15875", max: "222250", days: "1"},{id: "32", min: "50800", max: "127000", days: "1"},{id: "33", min: "95250", max: "254000", days: "2"},{id: "34", min: "38100", max: "127000", days: "2"},{id: "35", min: "50800", max: "76200", days: "1"},{id: "36", min: "69850", max: "127000", days: "2"},{id: "37", min: "95250", max: "190500", days: "2"},{id: "38", min: "57150", max: "190500", days: "2"},{id: "39", min: "95250", max: "381000", days: "3-4"},{id: "40", min: "63500", max: "457200", days: "3-4"},{id: "41", min: "114300", max: "317500", days: ""},{id: "42", min: "222250", max: "539750", days: "5-7"},{id: "43", min: "381000", max: "920750", days: "7-9"},{id: "44", min: "381000", max: "635000", days: "5-7"},{id: "45", min: "508000", max: "933450", days: "7"},{id: "46", min: "190500", max: "285750", days: "3"},{id: "47", min: "95250", max: "127000", days: "4-6"},{id: "48", min: "1270000", max: "1460500", days: "7-10"},{id: "49", min: "254000", max: "412750", days: "3-4"},{id: "50", min: "317500", max: "476250", days: "1"},{id: "51", min: "222250", max: "381000", days: "1"},{id: "52", min: "222250", max: "635000", days: "1"},{id: "53", min: "63500", max: "190500", days: "2/month"},{id: "54", min: "19050", max: "28575", days: ""},{id: "55", min: "190500", max: "425450", days: "3-4"},{id: "56", min: "349250", max: "635000", days: "6-8"},{id: "57", min: "9525", max: "22225", days: ""},{id: "58", min: "38100", max: "127000", days: ""},{id: "59", min: "63500", max: "127000", days: "1"},{id: "60", min: "152400", max: "222250", days: ""},{id: "61", min: "2540000", max: "3556000", days: "28-30"},{id: "62", min: "317500", max: "1397000", days: "7-9"},{id: "63", min: "1841500", max: "2095500", days: "40"},{id: "64", min: "1016000", max: "1778000", days: "25-30"},{id: "65", min: "1397000", max: "1587500", days: "10-20"},{id: "66", min: "1460500", max: "2540000", days: "10-20"},{id: "67", min: "44450", max: "317500", days: "4"},{id: "68", min: "158750", max: "222250", days: "2"},{id: "69", min: "285750", max: "571500", days: "4-5"},{id: "70", min: "368300", max: "539750", days: "2"},{id: "71", min: "285750", max: "603250", days: "4"},{id: "72", min: "95250", max: "444500", days: "1-2"},{id: "73", min: "15875", max: "63500", days: "1-2"},{id: "74", min: "76200", max: "177800", days: "3"}]
  $scope.hospitalEstimateList = [];
  $scope.hospitalDetails ={};
  
  $scope.getTreatmentTypeByCategory = function() { 	
	  $scope.showProcessing();	
	  $scope.treatmentType = "";
	  $scope.TreatmentTypeByCategoryList =[];
	  $scope.TreatmentTypeByCategory =[];
	  
	  angular.forEach( $scope.treatmentTypeList,function(TreatmentTypeByCategory){
  		if($scope.category == TreatmentTypeByCategory.catId){
  			$scope.TreatmentTypeByCategoryList.push({'id':TreatmentTypeByCategory.id,'catId':TreatmentTypeByCategory.catId,'value':TreatmentTypeByCategory.value});
  		}
		})
	  
	  
	  $scope.hideProcessing();
  };
  
  
  $scope.resetSearchFlag = function(){
	  $scope.searchFlag = false;
  }
  
  $scope.getElement = function (selector) {
  	return angular.element(document.querySelector(selector));
  };
  
  $scope.showProcessing = function () {
  	if(!$scope.getElement("#ftco-loader").hasClass("show")) {
  		$scope.getElement("#ftco-loader").addClass("show");
  	}
  };

  $scope.hideProcessing = function () {
  	if($scope.getElement("#ftco-loader").hasClass("show")) {
  		$scope.getElement("#ftco-loader").removeClass("show");
  	}
  };	 
  
  $scope.blogNews = function(){
	  $scope.showProcessing();
		var request = new XMLHttpRequest()
		request.open('GET', 'http://hospitality-env.eba-spmx357q.us-east-2.elasticbeanstalk.com/hospitalT/blogs', true)
		request.onload = function() {
		  // Begin accessing JSON data here
		  $scope.blog = JSON.parse(this.response);
		  console.log($scope.blog);
		  $scope.$apply();
		}
		request.send();
		$scope.hideProcessing();
	}
  $scope.blogNews();
  
  $scope.getHospitalSearchResults = function(e){
	  if($scope.stateName == "" && $scope.detectedState==""){
		  e.preventDefault();
		  $("#myAlert").show();
		  document.querySelector("#state").focus();
		  return false;
	  }
	  /*else if($scope.searchKeyword == undefined || $scope.searchKeyword == ""){
		  e.preventDefault();
		  window.alert("Please Enter hospital Name to search.");
		  document.querySelector("#search").focus();
		  return false;
	  } 
	  */else {
		  $scope.searchFlag = true;
		 
		  if($scope.detectedState!=''){
			  $scope.stateName = $scope.detectedState;
		  }
		  
		  $scope.showProcessing();
		  var request = new XMLHttpRequest()
		  request.open('GET', 'http://hospitality-env.eba-spmx357q.us-east-2.elasticbeanstalk.com/hospitalT/hospitals/state/'+ $scope.stateName +'/city/'+ $scope.detectedCity, true)
		  request.onload = function() {
		  // Begin accessing JSON data here
			$scope.hospitalSearchResults = JSON.parse(this.response);
			$scope.searchHospitals();
			
			if($scope.searchKeyword ==""){
				$scope.hospitalSearch = $scope.hospitalSearchResults;
				$scope.$apply();
			}
			
		  console.log($scope.hospitalSearchResults);
		  $scope.$apply();
		  $scope.hideProcessing();
		}
		request.send();
	  }
	}
  
   $scope.searchHospitals = function(){
	  $scope.showProcessing();
	  $scope.hospitalSearch = [];
	  var x;
	  for (x = 0 ; x< $scope.hospitalSearchResults.length; x++) {
		 if($scope.searchKeyword.toLowerCase().substring(0, 3) == $scope.hospitalSearchResults[x].hospital.substring(0, 3).toLowerCase()){
			 $scope.hospitalSearch.push($scope.hospitalSearchResults[x]);
			 $scope.searchFlag = true;
		 }
		}
	  $scope.hideProcessing();	  
  }
   
   $scope.detectCity= function()
   {
	   console.log("gjhkhkhk")
		  
		var request = new XMLHttpRequest()
		request.open('GET', 'https://api.ipify.org?format=json', true)
		request.onload = function() {
		  // Begin accessing JSON data here
		 let userIp=JSON.parse(this.response);;
		  console.log("usr ip", userIp.ip);
		  if(userIp){
		 

				var request2 = new XMLHttpRequest()
			  request2.open('GET', 'http://api.ipstack.com/'+userIp.ip+'?access_key=b13c86ea4b07a01872f6c628d4861201&format=1', true)
				request2.onload = function() {
					var cityData=JSON.parse(this.response);
					console.log(cityData);
				  console.log("CITY RESPONSE",this.response.city);
				  $scope.detectedCity=cityData.city;
				  $scope.detectedState=cityData.region_name;
				  $scope.$apply();
				  
				  $scope.detectedCity && document.querySelector("#citySelected")? document.querySelector("#citySelected").innerHTML= $scope.detectedCity:'';
			  }
				request2.send();
			  
		  }
		}
		request.send();
	};
   
	$scope.onStateSelection= function(){
		$scope.detectedCity  = "";
		$scope.detectedState = "";
	}
	
	$scope.getHospitalList= function(){
		$scope.hospitalEstimateResults = [];
		$scope.treatmentFor = $scope.treatmentType;
		  $scope.estimated = {}
		  
		  $scope.showProcessing();
		  
		  angular.forEach( $scope.treatmentTypeList,function(treatment){
			    if(treatment.id == $scope.treatmentType){
				$scope.treatmentFor= treatment.value;
			    }
			 }); 
			 
		  angular.forEach( $scope.estimate,function(hospitalEstimate){
			    if(hospitalEstimate.id == $scope.treatmentType){
				$scope.estimated= {id: hospitalEstimate.id, min: hospitalEstimate.min, max: hospitalEstimate.max, days: hospitalEstimate.days};
			    }
			 });
			
		  var request = new XMLHttpRequest()
		  request.open('GET', 'http://hospitality-env.eba-spmx357q.us-east-2.elasticbeanstalk.com/hospitalT/hospitals/state/'+ $scope.location +'/city/'+ $scope.detectedCity, true)
		  request.onload = function() {
		  // Begin accessing JSON data here
			$scope.hospitalEstimateResults = JSON.parse(this.response);
			
		  $scope.$apply();
		}
		request.send();
		$scope.hideProcessing();
	}
	
	  $scope.onGetEstimateClick = function(e){
		  if($scope.validateEstimate(e)) {
			  $scope.showProcessing();
			  $scope.getEstimateFlag = true;
			  $scope.populateEstimatedList(); 
		  }
		  
	  }
   
	  $scope.validateEstimate = function(e){
		  if($scope.category == ""){
			  e.preventDefault();
			  $("#myLocationAlert").show();
			  document.querySelector("#category").focus();
			  return false;
		  }else if($scope.treatmentType == ""){
			  e.preventDefault();
			  $("#myLocationAlert").show();
			  document.querySelector("#treatmentType").focus();
			  return false;
		  }else if($scope.location == ""){
			  e.preventDefault();
			  $("#myLocationAlert").show();
			  document.querySelector("#location").focus();
			  return false;
		  }else{
			  return true;
		  }
	  }
	  
	  $scope.populateEstimatedList = function(){
		  $scope.showProcessing();
		  $scope.hospitalEstimateList=[];
			
			for(var i = 0; i < 21; i++ ) {
		  			$scope.hospitalEstimateList.push({'name':$scope.hospitalEstimateResults[i].hospital,'rating': 3,'riskLevel': 1, 'hospitalTScore': 75,'minAmount': $scope.estimated.min, 'maxAmount': $scope.estimated.max,'location': $scope.hospitalEstimateResults[i].address+" "+$scope.hospitalEstimateResults[i].city+" "+$scope.hospitalEstimateResults[i].state, 'special': "Quality Treatment", 'days': $scope.estimated.days,'rank': $scope.hospitalEstimateResults[i].sr_no});
		  			
				 }
			setTimeout(function(){ $scope.hideProcessing(); }, 2000);
	  }
 // $scope.getHospitalSearchResults();
	  
		  
		 
	$scope.hospitalData = function(hospital){
			 $scope.hospitalDetails = $scope.hospitalEstimateList[hospital];
			 localStorage.setItem("hospitalName", $scope.hospitalDetails.name);
			 localStorage.setItem("hospitalLocation", $scope.hospitalDetails.location);
			 localStorage.setItem("hospitalRating", $scope.hospitalDetails.rating);
			 localStorage.setItem("hospitalSpeciality", $scope.hospitalDetails.special);
			 localStorage.setItem("hospitalScore", $scope.hospitalDetails.hospitalTScore);
			 localStorage.setItem("hospitalRank", $scope.hospitalDetails.rank);
			 
	}
});