<!DOCTYPE html>
<html lang="en" ng-app="crudApp" >
    <head>
    <title>HospitalT</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">    
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/UiDesign.css">
	
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700" rel="stylesheet" />
    <link rel="stylesheet" href="css/main.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
    <body ng-controller="UserController">
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" onClick="window.location = '/hospitalT';"><img src="images/hospitalTLogo1.png" alt="Fare Enough" width="300" height="60"></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="#" class="nav-link">{{menu.menu1}}</a></li>
	          <li class="nav-item"><a href="#hospital" class="nav-link" ng-click="resetSearchFlag();">{{menu.menu2}}</a></li>
	          <li class="nav-item"><a href="#reviews" class="nav-link">{{menu.menu3}}</a></li>
	          <li class="nav-item"><a href="#blog" class="nav-link">{{menu.menu4}}</a></li>
	          <li class="nav-item cta mr-md-2"><a href="#getEstimate" class="nav-link">Get Estimate</a></li>

	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-xl-10 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <div class="img d-flex align-self-stretch">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">  <img src="images/corona.png" alt="" ></img></h1>
            </div>
            <p id="curDate" class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"></p>
            <div><img id="dimg_3" src="images/worldwide.png" class="rISBZc" height="20" style="margin-right:8px" width="20" alt="Worldwide" data-atf="4">Worldwide </div>
            <div id="timer" style="display:flex" class="d-flex mb-3">
						  <div class="time" id="wcases"></div>
						  <div class="time pl-4" id="wrecover"></div>
						  <div class="time pl-4" id="wdeaths"></div>
						
						</div>
		   <div><img id="dimg_1" src="images/india.png" class="rISBZc" height="20" style="margin-right:8px" width="20" alt="India" data-atf="4">India</div>
            <div id="timer" style="display:flex" class="d-flex mb-3">
						  <div class="time" id="indcases"></div>
						  <div class="time pl-4" id="indrecover"></div>
						  <div class="time pl-4" id="inddeath"></div>
						
						</div>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section services-section bg-light">
      <div class="container">
        <div class="row d-flex">
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span><img style="width: 117px;height: 60px;" src="images/svg/001-hospital.svg"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Accurate Estimate</h3>
                <p>	Real Time Estimation of treatment cost based on treatment and ranked accordingly.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span><img style="width: 100px;height: 60px;" src="images/svg/004-doctor-1.svg"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Bringing Transparency</h3>
                <p>Unlock the case and get transparent working structure inside the medical industry.</p>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span><img style="width: 100px;height: 60px;" src="images/svg/002-hospital-1.svg"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Top Hospitals</h3>
                <p>Search top hospitals based on our HospitalT Score along with genuine and verified user's review.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span><img style="width: 101px;height: 60px;" src="images/svg/007-clipboard.svg"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Tailored Analysis</h3>
                <p>Smartly Analyze and decide the best medical services suited within budget.</p>
              </div>
            </div>      
          </div>
        </div>
      </div>
    </section>
   	
    <section class="ftco-counter img" id="section-counter">
    	<div class="container">
    		<div class="row d-flex">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-self-stretch" style="background-image:url(images/about.jpg);"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 py-5">
    				<div class="row justify-content-start pb-3">
		          <div class="col-md-12 heading-section ftco-animate">
		          	<span class="subheading">HospitalT Stats</span>
		            <h2 class="mb-4"><span>HospitalT</span> Stats</h2>
		            <p>Continuous Development and data integration to improve the accessibility of user.</p>
		          </div>
		        </div>
		    		<div class="row">
		          <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center py-4 bg-light mb-4">
		              <div class="text">
		              	<div class="icon d-flex justify-content-center align-items-center">
		              		<span><img style="width: 100px;height: 60px;" src="images/svg/003-doctor.svg"></span>
		              	</div>
		                <strong class="number" data-number="21">0</strong>
		                <span>Recommendations</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center py-4 bg-light mb-4">
		              <div class="text">
		              	<div class="icon d-flex justify-content-center align-items-center">
		              		<span><img style="width: 100px;height: 60px;" src="images/svg/006-hospital-2.svg"></span>
		              	</div>
		                <strong class="number" data-number="5433">0</strong>
		                <span>Estimations</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center py-4 bg-light mb-4">
		              <div class="text">
		              	<div class="icon d-flex justify-content-center align-items-center">
		              		<span><img style="width: 100px;height: 60px;" src="images/svg/002-hospital-1.svg"></span>
		              	</div>
		                <strong class="number" data-number="30000">0</strong>
		                <span>Total Hospitals</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center py-4 bg-light mb-4">
		              <div class="text">
		              	<div class="icon d-flex justify-content-center align-items-center">
		              		<span><img style="width: 100px;height: 60px;" src="images/svg/001-hospital.svg"></span>
		              	</div>
		                <strong class="number" data-number="40">0</strong>
		                <span>Daily Treatment Addition</span>
		              </div>
		            </div>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>

<!--     <section class="ftco-section"> -->
<!--     	<div class="container"> -->
<!--     		<div class="row justify-content-center mb-5 pb-3"> -->
<!--           <div class="col-md-7 text-center heading-section ftco-animate"> -->
<!--           	<span class="subheading">Speaker</span> -->
<!--             <h2 class="mb-4"><span>Our</span> Speakers</h2> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="row"> -->
<!--         	<div class="col-md-12 ftco-animate"> -->
<!--         		<div class="carousel-testimony owl-carousel"> -->
<!--         			<div class="item"> -->
<!--         				<div class="speaker"> -->
<!-- 			        		<img src="images/speaker-1.jpg" class="img-fluid" alt="Colorlib HTML5 Template"> -->
<!-- 			        		<div class="text text-center py-3"> -->
<!-- 			        			<h3>John Adams</h3> -->
<!-- 			        			<span class="position">Web Developer</span> -->
<!-- 			        			<ul class="ftco-social mt-3"> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li> -->
<!-- 			              </ul> -->
<!-- 			        		</div> -->
<!-- 			        	</div> -->
<!--         			</div> -->

<!--         			<div class="item"> -->
<!--         				<div class="speaker"> -->
<!-- 			        		<img src="images/speaker-2.jpg" class="img-fluid" alt="Colorlib HTML5 Template"> -->
<!-- 			        		<div class="text text-center py-3"> -->
<!-- 			        			<h3>Paul George</h3> -->
<!-- 			        			<span class="position">Web Developer</span> -->
<!-- 			        			<ul class="ftco-social mt-3"> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li> -->
<!-- 			              </ul> -->
<!-- 			        		</div> -->
<!-- 			        	</div> -->
<!--         			</div> -->

<!--         			<div class="item"> -->
<!--         				<div class="speaker"> -->
<!-- 			        		<img src="images/speaker-3.jpg" class="img-fluid" alt="Colorlib HTML5 Template"> -->
<!-- 			        		<div class="text text-center py-3"> -->
<!-- 			        			<h3>James Smith</h3> -->
<!-- 			        			<span class="position">Web Developer</span> -->
<!-- 			        			<ul class="ftco-social mt-3"> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li> -->
<!-- 			              </ul> -->
<!-- 			        		</div> -->
<!-- 			        	</div> -->
<!--         			</div> -->

<!--         			<div class="item"> -->
<!--         				<div class="speaker"> -->
<!-- 			        		<img src="images/speaker-4.jpg" class="img-fluid" alt="Colorlib HTML5 Template"> -->
<!-- 			        		<div class="text text-center py-3"> -->
<!-- 			        			<h3>Angelie Crawford</h3> -->
<!-- 			        			<span class="position">Web Developer</span> -->
<!-- 			        			<ul class="ftco-social mt-3"> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li> -->
<!-- 			              </ul> -->
<!-- 			        		</div> -->
<!-- 			        	</div> -->
<!--         			</div> -->

<!--         			<div class="item"> -->
<!--         				<div class="speaker"> -->
<!-- 			        		<img src="images/speaker-5.jpg" class="img-fluid" alt="Colorlib HTML5 Template"> -->
<!-- 			        		<div class="text text-center py-3"> -->
<!-- 			        			<h3>Jackie Spears</h3> -->
<!-- 			        			<span class="position">Entrepreneur</span> -->
<!-- 			        			<ul class="ftco-social mt-3"> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li> -->
<!-- 			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li> -->
<!-- 			              </ul> -->
<!-- 			        		</div> -->
<!-- 			        	</div> -->
<!--         			</div> -->
<!--         		</div> -->
<!--         	</div> -->
<!--         </div> -->
<!--     	</div> -->
<!--     </section> -->
		

		<section class="ftco-section bg-light">
		   <div class="container">
    		 <div class="row justify-content-center mb-5 pb-3">
              <div class="col-md-7 text-center heading-section ftco-animate">
             	<span class="subheading">Search Hospitals</span>
                <h2 class="mb-4">Get <span></span>Estimate</h2>
             </div>
            </div>
			<div id="getEstimate" class="container topHospitalBox ftco-animate">
    <div class="s009">
      <form>
        <div class="inner-form">
          <div class="basic-search">        
            <div class="row input-field" style="margin-left: 0px;">
              <select id="state" class="col-lg-3 col-md-3 col-xs-12 selectDropdown" ng-click="onStateSelection();" ng-model="stateName" style="height: 50px;">
                    <option placeholder="" value="">Select State</option>
                    <option ng-selected="state==detectedState" ng-repeat="state in stateList" value="{{state}}">{{state}}</option>
                  </select>
              <button  class="col-lg-3 col-md-3 col-xs-12 btn-search" ng-click="detectCity();" style="height: 50px;"><span class="fa fa-crosshairs fa-2x" style="margin-left: -77%;"></span><span ng-show="detectedCity!=''" style="padding: 7px 0px 0px 7px;position: absolute;">{{detectedCity}}</span><span ng-show="detectedCity==''" style="padding: 7px 0px 0px 7px;position: absolute;">Detect Location</span></button>    
              <div class="col-lg-5 col-md-5 col-xs-8" style="padding: 0px;">
              	<input id="search" type="text" ng-model="searchKeyword" placeholder="Search Hospitals" style="height: 50px;"/>
              </div>
              <div class="col-lg-1 col-md-1 col-xs-4" style="padding: 0px;background: white;">
              <div class="icon-wrap" ><a href="#hospital" ng-click="getHospitalSearchResults($event);">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                  <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
                </svg>
                </a>
               </div>
              </div>
            </div>
            <div class="alert alert-danger alert-dismissible" id="myAlert">
  			 <a class="close">&times;</a>
   			 <strong>Please Select State to search.</strong>
 		 </div>
          </div>
          <div class="advance-search" ng-show="!showFlag">
            <span class="desc">FARE ESTIMATE</span>
            <div ng-show="location=='' || category=='' || treatmentType==''" class="alert alert-danger alert-dismissible" id="myLocationAlert">
  			 <a class="close">&times;</a>
   			 <strong ng-show="category==''">Please Select category to get Estimate.</strong>
   			 <strong ng-show="treatmentType=='' && category!=''">Please Select treatment Type to get Estimate.</strong>
   			 <strong ng-show="location=='' && category!='' && treatmentType!=''">Please Select location to get Estimate.</strong>
   			 </div>
   			 <div ng-show="location!='' && category!='' && treatmentType!=''" class="alert alert-success alert-dismissible" id="myLocationAlert">
   			 <a class="close">&times;</a>
   			 <strong>Click on get estimate button to proceed.</strong>
 		    </div>
            <div class="row">
              <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="input-select">
                  <select id="category" class="selectDropdown" ng-model="category" ng-change="getTreatmentTypeByCategory();">
                    <option placeholder="" value="">Select category</option>
                    <option ng-repeat="category in categoryList" value="{{category.id}}">{{category.value}}</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="input-select">
                  <select id="treatmentType" class="selectDropdown" ng-model="treatmentType" >
                    <option placeholder="" value="">Select Treatment Type</option>
                     <option ng-repeat="treatmentType in TreatmentTypeByCategoryList" value="{{treatmentType.id}}">{{treatmentType.value}}</option>
                    
                  </select>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="input-select">
                  <select id="location"  class="selectDropdown" ng-model="location" ng-change="getHospitalList();">
                    <option placeholder="" value="">Select Location</option>
                    <option ng-repeat="state in stateList" value="{{state}}">{{state}}</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="row second">
              <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="input-select">
                <label for="diabetes">Diabetes : </label>
                <input type="radio" id="diabetesY" name="diabetesY" ng-model="diabetes" value="Yes" ng-checked="diabetes=='Yes'">
                <label for="diabetesY">Yes</label>
                <input type="radio" id="diabetesN" name="diabetesN" ng-model="diabetes" value="No" ng-checked="diabetes=='No'">
                <label for="diabetesY">No</label>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="input-select" ng-show="showFlag">
                <label for="flexi">Location Flexibility : </label>
                <input type="radio" id="flexiY" name="flexiY" ng-model="locationFlexibility" value="Yes">
                <label for="diabetesY">Yes</label>
                <input type="radio" id="flexiN" name="flexiN" ng-model="locationFlexibility" value="No">
                <label for="diabetesY">No</label>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-xs-12">
               <div class="input-field pull-right">
                <div class="group-btn">
                  <a class="btn-search" href="#result" ng-click="onGetEstimateClick($event)" style="color: white;padding: 11px;">GET ESTIMATE</a>
                </div>
                </div>
              </div>
            </div>
            <div class="row third">
              <div class="input-field">
                <div class="result-count">
                  <span ng-if="getEstimateFlag">{{hospitalEstimateList.length>0?hospitalEstimateList.length:0}} </span>results</div>
                
              </div>
            </div>
          </div>
        </div>
      </form>
       </div>
</div>
	          </div>
	          <div id="result" class="container topHospitalBox" ng-show="getEstimateFlag">
    		 <div class="row justify-content-center mb-5 pb-3">
              <div class="col-md-7 text-center heading-section ftco-animate">
             	<span class="subheading">Treatment Estimate</span>
                <h2 class="mb-4">Estimate <span></span>Results</h2>
             </div>
            </div>
	          <div class="col-md-12">
	              <div class="info" ng-repeat="hospital in hospitalEstimateList | limitTo: 21">
	              	<div class="speaker-wrap d-flex">
	              		<div class="img speaker-img" style="background-image: url(images/svg/002-hospital-1.svg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="fa fa-star checked" ng-repeat="x in [].constructor(hospital.rating) track by $index"></span>
							<span class="fa fa-star" ng-repeat="x in [].constructor((5-hospital.rating)) track by $index"></span>
	              			<h2><a href="#">{{hospital.name}}</a></h2>
	              			<h5>{{hospital.location}}</h5>
	              			<div class="row">
	              			<div class="col-lg-4 col-md-4 col-sm-12">
	              			<span class="treatmentFor">Treatment For : {{treatmentFor}}</span>
	              			</div>
	              			<div class="col-lg-2 col-md-2 col-sm-12">
	              			<span class="riskLevel">Risk Level : {{hospital.riskLevel}}%</span>
	              			</div>
	              			<div class="col-lg-2 col-md-2 col-sm-12">
	              			<span class="hospitalTScore">HospitalT Score : {{hospital.hospitalTScore}}</span>
	              			</div>
	              			<div class="col-lg-4 col-md-4 col-sm-12" >
	              			<span class="estimatedAmount">Estimated Amount: &#8377;{{hospital.minAmount}} - &#8377;{{hospital.maxAmount}}</span>
	              			</div>
	              			</div><br>
	              			<h3 class="fa fa-bank speaker-name"> <a ng-click="hospitalData($index)" href="/hospitalT/{{hospital.name}}" target="_blank">view detail </a> <span class="position">Ranked {{hospital.rank}}</span></h3>
	              		</div>
	              	</div>
	              </div>
	          </div>
	        </div>
		</section>
		

    <section class="ftco-section testimony-section">
      <div id="reviews" class="container topHospitalBox">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 text-center heading-section ftco-animate" >
          	<span class="subheading">Recommendations</span>
            <h2 class="mb-4"><span>Doctor's</span> Review</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <div class="item">
                <div class="testimony-wrap text-center py-4 pb-5">
                  <div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-4">"I have never found any website like this which transparently estimate treatment costs"</p>
                    <p class="name">Dr. Roger</p>
                    <span class="position">Senior Surgeon-AIIMS</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap text-center py-4 pb-5">
                  <div class="user-img mb-4" style="background-image: url(images/person_2.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-4">"I never never found any website like this which transparently estimate treatment costs"</p>
                    <p class="name">Dr. Roger</p>
                    <span class="position">Senior Surgeon-AIIMS</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap text-center py-4 pb-5">
                  <div class="user-img mb-4" style="background-image: url(images/person_3.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-4">"I never never found any website like this which transparently estimate treatment costs"</p>
                    <p class="name">Dr. Roger</p>
                    <span class="position">Senior Surgeon-AIIMS</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap text-center py-4 pb-5">
                  <div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-4">"I never never found any website like this which transparently estimate treatment costs"</p>
                    <p class="name">Dr. Roger</p>
                    <span class="position">Senior Surgeon-AIIMS</span>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap text-center py-4 pb-5">
                  <div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-4">"I never never found any website like this which transparently estimate treatment costs"</p>
                    <p class="name">Dr. Roger</p>
                    <span class="position">Senior Surgeon-AIIMS</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section bg-light ftco-animate">
		    <div id="hospital" class="container topHospitalBox">
		        <div class="row justify-content-center">
		          <div class="col-md-12 heading-section text-center ftco-animate" ng-show="!searchFlag">
		          	<span class="subheading">Top Hospitals</span>
		            <h2><span>Top</span> Hospitals</h2>
		          </div>
		          <div class="col-md-12 heading-section text-center ftco-animate" ng-show="searchFlag">
		          	<span class="subheading">Search Results</span>
		            <h2><span>Search</span> Results<span ng-show="detectedCity!=''" > for {{detectedCity}}</span></h2>
		          </div>
		        </div>
	          <div id="hospitals" class="col-md-12" ng-show="searchFlag">
	              <div class="info" ng-show="hospitalSearch.length=='0'">
	              	<div class="speaker-wrap d-flex">
						<div class="alert alert-danger alert-dismissible" id="myAlert">
							<a href="#getEstimate">&times;</a> <strong>No matching record Found.</strong>
						</div>
					</div>
	              </div>
	              <div class="info" ng-repeat="hospital in hospitalSearch | limitTo: 21">
	              	<div class="speaker-wrap d-flex">
	              		<div class="img speaker-img" style="background-image: url(images/svg/002-hospital-1.svg);"></div>
	              		<div class="text pl-md-5">
	              			<span class="fa fa-star checked" ng-repeat="x in [].constructor(hospitalStaticRank) track by $index"></span>
							<span class="fa fa-star" ng-repeat="x in [].constructor((5-hospitalStaticRank)) track by $index"></span>
	              			<h2><a href="#">{{hospital.hospital}}</a></h2>
	              			<h5>{{hospital.address+", "+hospital.district+", "+hospital.state}}</h5>
	              			<div class="row">
	              			<div class="col-lg-4 col-md-4 col-sm-12">
	              			<span class="treatmentFor">Speciality in : Quality Treatment</span>
	              			</div>
	              			<div class="col-lg-2 col-md-2 col-sm-12">
	              			<span class="riskLevel">Risk Level : 0%</span>
	              			</div>
	              			<div class="col-lg-2 col-md-2 col-sm-12">
	              			<span class="hospitalTScore">HospitalT Score : 80</span>
	              			</div>
	              			<div class="col-lg-4 col-md-4 col-sm-12" >
	              			<span class="btn btn-primary">KNOW MORE &nbsp;<span class="fa fa-external-link"></span></span>
	              			</div>
	              			</div>
	              			<h3 class="fa fa-bank speaker-name"> <span class="position">Ranked {{hospital.sr_no}}</span></h3>
	              		</div>
	              	</div>
	              </div>
	          </div>
	          	          <div id="hospitalsInfo" class="col-md-12" ng-show="!searchFlag">
	              <div class="info" ng-repeat="hospital in hospitalInfo">
	              	<div class="speaker-wrap d-flex">
	              		<div class="img speaker-img" style="background-image: url(images/{{hospital.rank}}.png);"></div>
	              		<div class="text pl-md-5">
	              			<span class="fa fa-star checked" ng-repeat="x in [].constructor(hospital.rating) track by $index"></span>
							<span class="fa fa-star" ng-repeat="x in [].constructor((5-hospital.rating)) track by $index"></span>
	              			<h2><a href="#">{{hospital.name}}</a></h2>
	              			<h5>{{hospital.location}}</h5>
	              			<div class="row">
	              			<div class="col-lg-4 col-md-4 col-sm-12">
	              			<span class="treatmentFor">Speciality in : {{hospital.special}}</span>
	              			</div>
	              			<div class="col-lg-2 col-md-2 col-sm-12">
	              			<span class="riskLevel">Risk Level : {{hospital.riskLevel}}%</span>
	              			</div>
	              			<div class="col-lg-2 col-md-2 col-sm-12">
	              			<span class="hospitalTScore">HospitalT Score : {{hospital.hospitalTScore}}</span>
	              			</div>
	              			<div class="col-lg-4 col-md-4 col-sm-12" >
	              			<span class="btn btn-primary">KNOW MORE &nbsp;<span class="fa fa-external-link"></span></span>
	              			</div>
	              			</div>
	              			<h3 class="fa fa-bank speaker-name"> <span class="position">Ranked {{hospital.rank}}</span></h3>
	              		</div>
	              	</div>
	              </div>
	          </div>
	        </div>
		</section>
    
    
    <section class="ftco-section bg-light" ng-show="showFlag">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <span class="subheading">Pricing Tables</span>
            <h2 class="mb-1"><span>Our</span> Ticket Pricing</h2>
          </div>
        </div>
        <div class="row">
	        <div class="col-md-4 ftco-animate">
	          <div class="block-7">
	            <div class="text-center">
	            <h2 class="heading">Personal</h2>
	            <span class="price"><sup>$</sup> <span class="number">85</span></span>
	            <span class="excerpt d-block">per Month</span>
	            
	            <h3 class="heading-2 my-4">Enjoy All The Features</h3>
	            
	            <ul class="pricing-text mb-5">
	              <li>Conference Seats</li>
	              <li>Free Wifi</li>
	              <li>Coffee Breaks</li>
	              <li>Lunch</li>
	              <li>Workshops</li>
	              <li>One Speakers</li>
	              <li>Papers</li>
	            </ul>

	            <a href="#" class="btn btn-primary d-block px-2 py-3">Buy Ticket</a>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-4 ftco-animate">
	          <div class="block-7">
	            <div class="text-center">
	            <h2 class="heading">Small Team</h2>
	            <span class="price"><sup>$</sup> <span class="number">200</span></span>
	            <span class="excerpt d-block">per Month</span>
	            
	            <h3 class="heading-2 my-4">Enjoy All The Features</h3>
	            
	            <ul class="pricing-text mb-5">
	              <li>Conference Seats</li>
	              <li>Free Wifi</li>
	              <li>Coffee Breaks</li>
	              <li>Lunch</li>
	              <li>Workshops</li>
	              <li>One Speakers</li>
	              <li>Papers</li>
	            </ul>

	            <a href="#" class="btn btn-primary d-block px-2 py-3">Buy Ticket</a>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-4 ftco-animate">
	          <div class="block-7">
	            <div class="text-center">
	            <h2 class="heading">Family Pack</h2>
	            <span class="price"><sup>$</sup> <span class="number">499</span></span>
	            <span class="excerpt d-block">per Month</span>
	            
	            <h3 class="heading-2 my-4">Enjoy All The Features</h3>
	            
	            <ul class="pricing-text mb-5">
	              <li>Conference Seats</li>
	              <li>Free Wifi</li>
	              <li>Coffee Breaks</li>
	              <li>Lunch</li>
	              <li>Workshops</li>
	              <li>One Speakers</li>
	              <li>Papers</li>
	            </ul>

	            <a href="#" class="btn btn-primary d-block px-2 py-3">Buy Ticket</a>
	            </div>
	          </div>
	        </div>
	      </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
      <div id="blog" class="container topHospitalBox">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Our Blog</span>
            <h2><span>Recent</span> Blog</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="{{blog.articles[0].url}}" class="block-20" target="_blank" style="background-image: url('{{blog.articles[0].urlToImage}}');">
              </a>
              <div class="text p-4 float-right d-block">
              	<div class="d-flex align-items-center pt-2 mb-4">
              		<div class="one">
              			<span class="day">{{blog.articles[0].publishedAt.substring(8, 10)}}</span>
              		</div>
              		<div class="two">
              			<span class="yr">{{blog.articles[0].publishedAt.substring(0, 4)}}</span>
              			<span class="mos">June</span>
              		</div>
              	</div>
                <h3 class="heading mt-2"><a title="Read more..." target="_blank" href="{{blog.articles[0].url}}">{{blog.articles[0].description.substring(0, 121)}}...</a></h3>
                <p class="pull-right">{{blog.articles[0].source.name}}</p>
              </div>
            </div>
          </div>
		  <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="{{blog.articles[1].url}}" target="_blank" class="block-20" style="background-image: url('{{blog.articles[1].urlToImage}}');">
              </a>
              <div class="text p-4 float-right d-block">
              	<div class="d-flex align-items-center pt-2 mb-4">
              		<div class="one">
              			<span class="day">{{blog.articles[1].publishedAt.substring(8, 10)}}</span>
              		</div>
              		<div class="two">
              			<span class="yr">{{blog.articles[1].publishedAt.substring(0, 4)}}</span>
              			<span class="mos">June</span>
              		</div>
              	</div>
                <h3 class="heading mt-2"><a title="Read more..." href="{{blog.articles[1].url}}" target="_blank">{{blog.articles[1].description.substring(0, 121)}}...</a></h3>
                <p class="pull-right">{{blog.articles[1].source.name}}</p>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry justify-content-end">
              <a href="{{blog.articles[2].url}}" target="_blank" class="block-20" style="background-image: url('{{blog.articles[2].urlToImage}}');">
              </a>
              <div class="text p-4 float-right d-block">
              	<div class="d-flex align-items-center pt-2 mb-4">
              		<div class="one">
              			<span class="day">{{blog.articles[2].publishedAt.substring(8, 10)}}</span>
              		</div>
              		<div class="two">
              			<span class="yr">{{blog.articles[2].publishedAt.substring(0, 4)}}</span>
              			<span class="mos">June</span>
              		</div>
              	</div>
                <h3 class="heading mt-2"><a title="Read more..." href="{{blog.articles[0].url}}" target="_blank">{{blog.articles[2].description.substring(0, 121)}}...</a></h3>
                <p class="pull-right">{{blog.articles[2].source.name}}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section-parallax">
      <div class="parallax-img d-flex align-items-center">
        <div class="container">
          <div class="row d-flex justify-content-center">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
              <h2>Subcribe to our Newsletter</h2>
              <p>Receive Updates</p>
              <div class="row d-flex justify-content-center mt-4 mb-4">
                <div class="col-md-8">
                  <form action="#" class="subscribe-form">
                    <div class="form-group d-flex">
                      <input type="text" class="form-control" placeholder="Enter email address">
                      <input type="submit" value="Subscribe" class="submit px-3">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-gallery">
    	<div class="container-wrap">
    		<div class="row no-gutters">
					<div class="col-md-3 ftco-animate">
						<a href="images/image_1.jpg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(images/image_1.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-instagram"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="images/image_2.jpg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(images/image_2.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-instagram"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="images/image_3.jpg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(images/image_3.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-instagram"></span>
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="images/image_4.jpg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(images/image_4.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    						<span class="icon-instagram"></span>
    					</div>
						</a>
					</div>
        </div>
    	</div>
    </section>

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">HospitalT</h2>
              <p>Fare Enough | Bringing Transparency</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Useful Links</h2>
              <ul class="list-unstyled">
                <li><a href="#hospitalsInfo" class="py-2 d-block">Top Hospitals</a></li>
                <li><a href="#getEstimate" class="py-2 d-block">Get Estimate</a></li>
                <li><a href="#blog" class="py-2 d-block">Blog</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="#" target="_blank">BOYS</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    

  <!-- loader -->
  <div id="ftco-loader" class="show"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<script src="js/extention/choices.js"></script>  
    <!-- <script>
      const customSelects = document.querySelectorAll("select");
      const deleteBtn = document.getElementById('delete')
      const choices = new Choices('select',
      {
        searchEnabled: false,
        itemSelectText: '',
        removeItemButton: true,
      });
      for (let i = 0; i < customSelects.length; i++)
      {
        customSelects[i].addEventListener('addItem', function(event)
        {
          if (event.detail.value)
          {
            let parent = this.parentNode.parentNode
            parent.classList.add('valid')
            parent.classList.remove('invalid')
          }
          else
          {
            let parent = this.parentNode.parentNode
            parent.classList.add('invalid')
            parent.classList.remove('valid')
          }
        }, false);
      }
      deleteBtn.addEventListener("click", function(e)
      {
        e.preventDefault()
        const deleteAll = document.querySelectorAll('.choices__button')
        for (let i = 0; i < deleteAll.length; i++)
        {
          deleteAll[i].click();
        }
      });

    </script>
     -->
  <script>
	$(document).ready(function(){
		$("#myAlert").hide();
		$("#myLocationAlert").hide();
	  $(".close").click(function(){
	    $("#myAlert").alert("close");
	    $("#myLocationAlert").alert("close");
	  });
	});
</script>
  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  
  <script src="js/lib/angular.min.js" ></script>
  <script src="js/lib/angular-ui-router.min.js" ></script>
  <script src="js/lib/localforage.min.js" ></script>
  <script src="js/lib/ngStorage.min.js"></script>
  <script src="js/app/app.js"></script>
  <script src="js/app/UserService.js"></script>
  <script src="js/app/UserController.js"></script>
 </body>
</html>