var app = angular.module('crudApp',[]);
app.controller('hospitalController', function($rootScope, $scope, $window) {

	$scope.review = "";
	$scope.rating = {overall:"", one:"", two:"", three:"", four:"", five:""};
	$scope.showFlag = false;
	$scope.hospitalData = [{id: "1",name: "AIIMS", rating: "3.6"}, {id: "2",name: "Indraprasth Apollo", rating: "4"}];
	$scope.hospital ={};
	$scope.googlePlaces = {};
	$scope.googlePlacesDetail = {};
	$scope.backgroundImg = "";
	$scope.hospitalDetails = {name: "", location: "", rating: "", rank: "", special: "", hospitalTScore: ""};
	
	$scope.hospitalDetails.name = localStorage.getItem("hospitalName");
	$scope.hospitalDetails.location = localStorage.getItem("hospitalLocation");
	$scope.hospitalDetails.rating = localStorage.getItem("hospitalRating");
	$scope.hospitalDetails.special = localStorage.getItem("hospitalSpeciality");
	$scope.hospitalDetails.hospitalTScore = localStorage.getItem("hospitalScore");
	$scope.hospitalDetails.rank = localStorage.getItem("hospitalRank");
	$scope.userDetails ={id: "", name: "", emailId: "", img: ""};
	$scope.hospitalTable={
			Industry:"",
			Type:"",
			Founded:"",
			Headquarters: "",
		    Area_served: "",
		    Website:"",
		    Key_People:"",
		    Website:"",
		    Image:"",
		    ISIN:"",
		    Net_income:"",
		    Number_of_employees:"",
		    Revenue:""
		    
	}
	$scope.HospitalInfo="";
	
	$scope.getHospitalDetails=function()
	{
		let keyword = $scope.hospitalDetails.name.toLowerCase().split(" ")[0];
		
		fetch("http://hospitality-env.eba-spmx357q.us-east-2.elasticbeanstalk.com/hospitalT/hospitals/info",
		{
			  method: 'POST', 
			  headers: {
			    'Content-Type': 'application/json',
			  },
			  body: JSON.stringify(keyword+" "+"Hospital")
			})
		.then(response =>{return response.json();})
		.then(hospitalinfo => {
			console.log("info", hospitalinfo);
			$scope.hospitalTable={Industry:hospitalinfo.Industry,
			Type:hospitalinfo.Type,
			Founded:hospitalinfo.Founded,
			Headquarters:hospitalinfo.Headquarters,
		    Area_served:hospitalinfo['Area served'],
		    Key_People:hospitalinfo['Key People'],
		    Website:hospitalinfo.Website,
		    Image:hospitalinfo.Image,
		    ISIN:hospitalinfo.ISIN,
		    Net_income:hospitalinfo['Net income'],
		    Number_of_employees:hospitalinfo['Number of employees'],
		    Revenue:hospitalinfo.Revenue
			};
			$scope.HospitalInfo=hospitalinfo.HospitalInfo;
			
		})
		.catch(function(error) {
	        console.log(error);
	    });
	}
	
	$scope.getHospitalDetails();
	
	$scope.getGooglePlaces = function(){
		var request = new XMLHttpRequest()
		request.open('GET', 'http://hospitality-env.eba-spmx357q.us-east-2.elasticbeanstalk.com/hospitalT/google/places/'+$scope.hospitalDetails.name, true)
		request.onload = function() {
		  // Begin accessing JSON data here
		  $scope.googlePlaces = JSON.parse(this.response);
		  $scope.$apply();
		  $scope.getGooglePlacesDetailByPlaceId();
		}
		request.send();
	}
	$scope.getGooglePlaces();
	
	$scope.getGooglePlacesDetailByPlaceId = function(){
		var request = new XMLHttpRequest()
		request.open('GET', 'http://hospitality-env.eba-spmx357q.us-east-2.elasticbeanstalk.com/hospitalT/google/places/detail/'+$scope.googlePlaces.candidates[0].place_id, true)
		request.onload = function() {
		  // Begin accessing JSON data here
		  $scope.googlePlacesDetail = JSON.parse(this.response);
		  $scope.$apply();
		  $scope.backgroundImg = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference="+$scope.googlePlacesDetail.result.photos[0].photo_reference+"&sensor=false&key=AIzaSyAsPZNGc8rcRHSnPn2Z2dRR8VIHLgUhmoc";
		  $scope.getGooglePhoto();
		}
		request.send();
	}
	
	$scope.googlePhoto = "";
	$scope.getGooglePhoto = function(){
		var request = new XMLHttpRequest()
		request.open('GET', "http://hospitality-env.eba-spmx357q.us-east-2.elasticbeanstalk.com/hospitalT/google/photo/"+$scope.backgroundImg, true)
		request.onload = function() {
		  // Begin accessing JSON data here
		  $scope.googlePhoto = JSON.parse(this.response);
		  $scope.$apply();
		}
		request.send();
	}
	
	});
