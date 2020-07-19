<!DOCTYPE html>
<html ng-app="crudApp" lang="en">
   <head>
      <title>Profile Card</title>
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-signin-client_id" content="267702661425-gf2snhtr7pujj8od0et21fp279m975jl.apps.googleusercontent.com">
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
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   	  <link rel="stylesheet" href="css/hospitalStyle.css">
   	  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
   	  <script src="js/lib/angular.min.js" ></script>
  <script src="js/lib/angular-ui-router.min.js" ></script>
  <script src="js/lib/localforage.min.js" ></script>
  <script src="js/lib/ngStorage.min.js"></script>
  <script src="js/app/app.js"></script>
  <script src="js/app/UserService.js"></script>
   	  <script type="text/javascript" src="js/app/UserController.js"></script>
      <script type="text/javascript" src="js/app/hospitalController.js"></script>
   </head>
   <body ng-controller="hospitalController">
   	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar ftco-navbar-light" id="ftco-navbar">
	   
	    <div class="container" style="padding-bottom: 1%;">
	      <a class="navbar-brand" onClick="window.location = '/hospitalT';><img  src="images/hospitalTLogo1.png" alt="Fare Enough" width="300" height="60"></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="#" class="nav-link"></a></li>
	          <li class="nav-item"><a href="#hospitalsInfo" class="nav-link"></a></li>
	          <li class="nav-item"><a href="#reviews" class="nav-link"></a></li>
	          <li class="nav-item"><a href="#blog" class="nav-link"></a></li>
	          <li class="nav-item"><div class="image-container1" ng-show="userDetails.id!=''">
			            	   <img  style="height: 50px;width: 60px;" src="{{userDetails.img}}" />
			            <span style="margin-left: -95%;color: #33b6f8;">{{userDetails.emailId}}</span></div></li>

	        </ul>
	      </div>
	    
	  </nav>
    
	   	<div class="row" style="background-color: #e7f7ff;">
            <div class="col-lg-11 col-md-11 col-sm-12">
			     <div class="card-container">
			        <div class="upper-container" style="background-image: url({{backgroundImg}});">
			           	<div class="image-container">
			            	   <img src="{{googlePlacesDetail.result.icon}}" />
			            </div>
			        </div>
			        <div class="lower-container" style="background-color: #ffffff;">
			            <div class="row">
				            <div class="col-md-3 col-sm-12" style="word-break: break-word;">
				               <h3 id="">{{hospitalDetails.name}}</h3>
				               <h6>{{hospitalDetails.location}}</h6>
				               <p>The multi-specialty {{hospitalDetails.rank}} bedded hospital at {{hospitalDetails.location}} 
				                   has a Trauma Care Team and Respiratory Rehabilitation Unit. This hospital has a descent {{hospitalDetails.rating}} star rating and rank {{hospitalDetails.rank}} in the State. {{hospitalDetails.name}} holds a hospitalT Score of {{hospitalDetails.hospitalTScore}} which is based on the component rating and reviews of users. 
				              </p>
				
					        </div>

						        <div class="col-lg-9 col-md-9 col-sm-12">
						        	<ul class="nav nav-tabs" role="tablist">
									  <li class="nav-item">
									    <a class="nav-link active" data-toggle="tab" href="#hname" role="tab">Home</a>
									  </li>
									  <li class="nav-item">
									    <a class="nav-link" data-toggle="tab" href="#overallrating" role="tab">Profile</a>
									  </li>
									  <li class="nav-item">
									    <a class="nav-link" data-toggle="tab" href="#comments" role="tab">Comments</a>
									  </li>
									  <li class="nav-item">
									    <a class="nav-link" data-toggle="tab" href="#Review" role="tab">Review</a>
									  </li>
									  <li class="nav-item">
									    <a class="nav-link" data-toggle="modal" data-target="#myModal">Edit</a>
									  </li>
									</ul>
					              <div class="tab-content">   	
					               <div  class="tab-pane active" id="hname" role="tabpanel">
					               	<span>  </span> 
					               		<table>
					               			<tr>
					               				<th> Anything </th>
					               				<th> Info </th>
					               			</tr>
					               			<tr>
					               				<td> Name </td>
					               				<td> {{hospitalDetails.name}} </td>
					               			</tr>
					               			<tr>
					               				<td>Location</td>
					               				<td> {{googlePlacesDetail.result.plus_code.compound_code}} </td>
					               			</tr>
					               			<tr>
					               				<td> Status </td>
					               				<td> {{googlePlacesDetail.result.business_status}} </td>
					               			</tr>
					               			<tr>
					               				<td> Rating </td>
					               				<td> {{googlePlacesDetail.result.rating}} </td>
					               			</tr>
					               			<tr>
					               				<td> Speciality </td>
					               				<td> {{hospitalDetails.special}} </td>
					               			</tr>
					               			<tr>
					               				<td> HosppitalT Score </td>
					               				<td> {{hospitalDetails.hospitalTScore}} </td>
					               			</tr>
					               			<tr>
					               				<td> HosppitalT Rank </td>
					               				<td> {{hospitalDetails.rank}} </td>
					               			</tr>
					               			
					               		</table>
					               </div> 


<div id="overallrating" class="tab-pane" role="tabpanel">
		<h2 class="tbSec2"> Rating
		</h2>
		<div class="">
			<div class="rvw-h">
				<div class="rvwBlock recomended-flex">
					<div class="rvwLeft">
						<h2 class="ratingAll"> <!-- -->Overall Rating <!-- --> 
							<span>(Out of 5)</span>
						</h2>
						<div class="rvwScore">
							<h3>{{googlePlacesDetail.result.rating}}</h3>
							<div class="infrontRvws">
								<i class="empty_stars">
								<i style="width:{{googlePlacesDetail.result.rating*20}}%" class="full_starts"></i></i>
								<div class="refrnceTxt">
								<span> Based on <!-- -->7777<!-- --> Verified Reviews</span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="rvwProgress" >
						<p class="heading"> Distribution of Rating </p>
						<div class="starBar ">
							<div class="starC">
								<a class="ripple dark" history="[object Object]" location="[object Object]" match="[object Object]" staticcontext="[object Object]" href="reviews?rating=4.html">&gt;4-5<!-- --> star</a>
							</div>
							<div class="loadbar">
								<div class="fillBar" style="width:46%">
								</div>
							</div>
							<div class="starPrgrs">46<!-- -->%
							</div>
						</div>
						<div class="starBar ">
							<div class="starC">
								<a class="ripple dark" history="[object Object]" location="[object Object]" match="[object Object]" staticcontext="[object Object]" href="reviews?rating=3.html">&gt;3-4<!-- --> star</a>
							</div>
							<div class="loadbar">
								<div class="fillBar" style="width:41%">
								</div>
							</div>
							<div class="starPrgrs">41<!-- -->%
							</div>
						</div>
						<div class="starBar ">
							<div class="starC">
								<a class="ripple dark" history="[object Object]" location="[object Object]" match="[object Object]" staticcontext="[object Object]" href="reviews?rating=2.html">&gt;2-3<!-- --> star</a>
							</div>
							<div class="loadbar">
								<div class="fillBar" style="width:11%">
								</div>
							</div>
							<div class="starPrgrs">11<!-- -->%
							</div>
						</div>
						<div class="starBar ">
							<div class="starC">
								<a class="ripple dark" history="[object Object]" location="[object Object]" match="[object Object]" staticcontext="[object Object]" href="reviews?rating=1.html">1-2<!-- --> star
								</a>
							</div>
							<div class="loadbar">
								<div class="fillBar" style="width:2%">
								</div>
							</div>
							<div class="starPrgrs">2<!-- -->%
							</div>
						</div>
					</div>
					<div class="rvwRight">
						<div class="align-cntr">
							<h2 class="ratingAll rtng-cmpt">Component Ratings 
								<span>(Out of 5)</span>
							</h2>
							<div class="starBar">
								<div class="componetText"> <!-- -->Infrastructure</div>
									<div class="break_rating_star">
										<div class="cRating"> <!-- -->3.3</div>
										
										<i class="empty_stars starBg ">
										<i style="width:66%" class="full_starts starBg"></i></i>
									</div>
								</div>
								<div class="starBar">
									<div class="componetText"> <!-- -->Patient centric facilities</div>
									<div class="break_rating_star"><div class="cRating"> <!-- -->3.9</div>
									<i class="empty_stars starBg "><i style="width:78%" class="full_starts starBg"></i></i>
								</div>
							</div>
							<div class="starBar"><div class="componetText"> <!-- -->Technological Advancement</div>
							<div class="break_rating_star">
								<div class="cRating"> <!-- -->4.2</div>
							<i class="empty_stars starBg "><i style="width:84%" class="full_starts starBg"></i></i>
							</div>
						</div>
						<div class="starBar">
							<div class="componetText"> <!-- -->Doctor patient Ratio</div>
							<div class="break_rating_star">
								<div class="cRating"> <!-- -->4.0</div>
									<i class="empty_stars starBg ">
									<i style="width:80%" class="full_starts starBg"></i></i>
							</div>
						</div>
						<div class="starBar">
							<div class="componetText"> <!-- -->Bed Availability</div>
							<div class="break_rating_star">
								<div class="cRating"> <!-- -->4.3</div>
								<i class="empty_stars starBg ">
								<i style="width:86%" class="full_starts starBg"></i></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="allRvws">
			<div class="getAllrvws"> 
				The <span class="verified-tag">
					<i class="icon-verified-tag"></i>Verified
					</span> 
					<span class="new-title">badge
					</span> 
				indicates that the reviewer's details have been verified by HospitalT, and reviewers are 
				<span class="new-title">________</span> of this ______. These reviews and ratings have been given by _______. HospitalT does not endorsed the same. Out of <!-- -->8927<!-- --> published <!-- -->reviews<!-- -->,
				<span class="new-title">7777<!-- --> <!-- -->reviews are<!-- --> verified.
				</span>
			</div>
		</div>
	</div>
</div>

<div id="comments" class="tab-pane" role="tabpanel">
		<h2 class="tbSec2"> Reviews
		</h2>
					<div class="rvwLeft" ng-repeat="review in googlePlacesDetail.result.reviews" style="padding: 10px;">
						<div class="image-container442 pull-left">
			            	<img  src="{{review.profile_photo_url}}" />
			            	       </div>
			            	<div class="infrontRvws" style="margin-left: 17%;">
								<i class="empty_stars">
								<i style="width:{{review.rating*20}}%" class="full_starts"></i></i>({{review.rating}})
								<div class="refrnceTxt">
								</div>
							</div><br>
			            	<h2 style="margin-left: 17%;">{{review.author_name}}</h2>
			            	<p style="margin-left: 17%;">{{review.text}} <br><span class="pull-right" style="color: red;">{{review.relative_time_description}}</span></p>
<!-- 			            	<span>{{review.rating}}</span> -->
			            	
			   
		</div>
</div>

<div id="Review" class="tab-pane" role="tabpanel">
	<form>
		<div class="rev-form">
			<div class="">
			<div class="rvw-h">
				<div class="rvwBlock recomended-flex">
					<div class="rvwLeft">
						<h2 class="ratingAll"> <!-- -->Overall Rating <!-- --> 
							<span> (Out of 5)</span>
						</h2>
						<div class="rvwScore">
							<h3 class="overallStars">0</h3>
							<div class="infrontRvws">
								<ul class="stars">	
									<li id = "overallStars" class="star" onmouseover ="onClickRating('overallStars')"><i class="fa fa-star"></i></li>
									<li id = "overallStars" class="star" onmouseover ="onClickRating('overallStars')"><i class="fa fa-star"></i></li>
									<li id = "overallStars" class="star" onmouseover ="onClickRating('overallStars')"><i class="fa fa-star"></i></li>
									<li id = "overallStars" class="star" onmouseover ="onClickRating('overallStars')"><i class="fa fa-star"></i></li>
									<li id = "overallStars" class="star" onmouseover ="onClickRating('overallStars')"><i class="fa fa-star"></i></li>
								</ul>
		<textarea id="reviews" name="reviews"  maxlength="1000" rows="4" cols="50" ng-model="review" placeholder="Write your review ...." required></textarea>					
							</div>
						</div>

					</div>
					
					<div class="rvwProgress" ng-show="showFlag">
						<p class="heading"> Distribution of Rating </p>
						<div class="starBar ">
							<div class="starC">
								<a class="ripple dark" history="[object Object]" location="[object Object]" match="[object Object]" staticcontext="[object Object]" href="reviews?rating=4.html">&gt;4-5<!-- --> star</a>
							</div>
							<div class="loadbar">
								<div class="fillBar" style="width:46%">
								</div>
							</div>
							<div class="starPrgrs">46<!-- -->%
							</div>
						</div>
						<div class="starBar ">
							<div class="starC">
								<a class="ripple dark" history="[object Object]" location="[object Object]" match="[object Object]" staticcontext="[object Object]" href="reviews?rating=3.html">&gt;3-4<!-- --> star</a>
							</div>
							<div class="loadbar">
								<div class="fillBar" style="width:41%">
								</div>
							</div>
							<div class="starPrgrs">41<!-- -->%
							</div>
						</div>
						<div class="starBar ">
							<div class="starC">
								<a class="ripple dark" history="[object Object]" location="[object Object]" match="[object Object]" staticcontext="[object Object]" href="reviews?rating=2.html">&gt;2-3<!-- --> star</a>
							</div>
							<div class="loadbar">
								<div class="fillBar" style="width:11%">
								</div>
							</div>
							<div class="starPrgrs">11<!-- -->%
							</div>
						</div>
						<div class="starBar ">
							<div class="starC">
								<a class="ripple dark" history="[object Object]" location="[object Object]" match="[object Object]" staticcontext="[object Object]" href="reviews?rating=1.html">1-2<!-- --> star
								</a>
							</div>
							<div class="loadbar">
								<div class="fillBar" style="width:2%">
								</div>
							</div>
							<div class="starPrgrs">2<!-- -->%
							</div>
						</div>
					</div>
					<div class="rvwRight">
						<div class="align-cntr">
							<h2 class="ratingAll rtng-cmpt">Component Ratings 
								<span>(Out of 5)</span>
							</h2>
							<div class="starBar">
								<div class="componetText"> <!-- -->Infrastructure</div>
									<div class="break_rating_star">
										<div class="star1 alignCenter"> <!-- -->0</div>
										
										<ul class="stars">	
									<li id="star1" class="star" onmouseover ="onClickRating('star1')"><i class="fa fa-star"></i></li>
									<li id="star1" class="star" onmouseover ="onClickRating('star1')"><i class="fa fa-star"></i></li>
									<li id="star1" class="star" onmouseover ="onClickRating('star1')"><i class="fa fa-star"></i></li>
									<li id="star1" class="star" onmouseover ="onClickRating('star1')"><i class="fa fa-star"></i></li>
									<li id="star1" class="star" onmouseover ="onClickRating('star1')"><i class="fa fa-star"></i></li>
								</ul>
									</div>
								</div>
								<div class="starBar">
									<div class="componetText"> <!-- -->Patient centric facilities</div>
									<div class="break_rating_star"><div class="star2 alignCenter"> <!-- -->0</div>
									<ul class="stars">	
									<li id="star2" class="star" onmouseover ="onClickRating('star2')"><i class="fa fa-star"></i></li>
									<li id="star2" class="star" onmouseover ="onClickRating('star2')"><i class="fa fa-star"></i></li>
									<li id="star2" class="star" onmouseover ="onClickRating('star2')"><i class="fa fa-star"></i></li>
									<li id="star2" class="star" onmouseover ="onClickRating('star2')"><i class="fa fa-star"></i></li>
									<li id="star2" class="star" onmouseover ="onClickRating('star2')"><i class="fa fa-star"></i></li>
								</ul>
								</div>
							</div>
							<div class="starBar"><div class="componetText"> <!-- -->Technological Advancement</div>
							<div class="break_rating_star">
								<div class="star3 alignCenter"> <!-- -->0</div>
								<ul class="stars">	
									<li id="star3" class="star" onmouseover ="onClickRating('star3')"><i class="fa fa-star"></i></li>
									<li id="star3" class="star" onmouseover ="onClickRating('star3')"><i class="fa fa-star"></i></li>
									<li id="star3" class="star" onmouseover ="onClickRating('star3')"><i class="fa fa-star"></i></li>
									<li id="star3" class="star" onmouseover ="onClickRating('star3')"><i class="fa fa-star"></i></li>
									<li id="star3" class="star" onmouseover ="onClickRating('star3')"><i class="fa fa-star"></i></li>
								</ul>							</div>
						</div>
						<div class="starBar">
							<div class="componetText"> <!-- -->Doctor patient Ratio</div>
							<div class="break_rating_star">
								<div class="star4 alignCenter"> <!-- -->0</div><ul class="stars">	
									<li id="star4" class="star" onmouseover ="onClickRating('star4')"><i class="fa fa-star"></i></li>
									<li id="star4" class="star" onmouseover ="onClickRating('star4')"><i class="fa fa-star"></i></li>
									<li id="star4" class="star" onmouseover ="onClickRating('star4')"><i class="fa fa-star"></i></li>
									<li id="star4" class="star" onmouseover ="onClickRating('star4')"><i class="fa fa-star"></i></li>
									<li id="star4" class="star" onmouseover ="onClickRating('star4')"><i class="fa fa-star"></i></li>
								</ul>
							</div>
						</div>
						<div class="starBar">
							<div class="componetText"> <!-- -->Bed Availability</div>
							<div class="break_rating_star">
								<div class="star5 alignCenter"> <!-- -->0</div>
								<ul class="stars">	
									<li id="star5" class="star" onmouseover ="onClickRating('star5')"><i class="fa fa-star"></i></li>
									<li id="star5" class="star" onmouseover ="onClickRating('star5')"><i class="fa fa-star"></i></li>
									<li id="star5" class="star" onmouseover ="onClickRating('star5')"><i class="fa fa-star"></i></li>
									<li id="star5" class="star" onmouseover ="onClickRating('star5')"><i class="fa fa-star"></i></li>
									<li id="star5" class="star" onmouseover ="onClickRating('star5')"><i class="fa fa-star"></i></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
								<h6 class="tbSec6">
								</h6>
		<div class="g-signin2" data-onsuccess="onSignIn"></div>
		</div>
	</form>
</div>
							 </div>

	<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="width: 100%;">
          
          <span class="modal-title pull-left" style="font-weight: bold;font-size: 16px;">Edit Details</span>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <form>
		<div class="form">	
			<input type="text" name="hospitalName" autocomplete="off" required /> 
			<label for="hospitalName" class="label">
				<span class="content">Hospital Name</span>
			</label> </div>
		<div class="form">	
			<input type="text" name="Address" autocomplete="off" required /> 
			<label for="Address" class="label">
				<span class="content">Address</span>
			</label> 
		</div>
		<div class="form">	
			<input type="text" name="City" autocomplete="off" required /> 
			<label for="City" class="label">
				<span class="content">City</span>
			</label> 
		</div>
		<div class="form">	
			<input type="text" name="District" autocomplete="off" required /> 
			<label for="District" class="label">
				<span class="content">District</span>
			</label> 
		</div>
		<div class="form">	
			<input type="text" name="State" autocomplete="off" required /> 
			<label for="State" class="label">
				<span class="content">State</span>
			</label> 
		</div>
		<div class="form">	
			<input type="text" name="PinCode" autocomplete="off" required /> 
			<label for="PinCode" class="label">
				<span class="content">PinCode</span>
			</label> 
		</div>
		<div class="form">	
			<input type="text" name="stateRanking" autocomplete="off" required /> 
			<label for="stateRanking" class="label">
				<span class="content">State Ranking</span>
			</label> 
		</div>
		<div class="form">	
			<input type="text" name="Speciality" autocomplete="off" required /> 
			<label for="Speciality" class="label">
				<span class="content">Speciality</span>
			</label>
		</div>
	</form>

        </div>
        <div class="modal-footer pull-right" style="width: 100%;">
          <button type="button" class="btn-footer" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  </div>
						    </div>
			             </div>
			         </div>
			      </div>
			</div>  	
   		</div>
   		<footer class="ftco-footer" style="width: 100%;padding:15px;background-color:#e7f7ff">
          <div class="col-md-12 text-center">

            <p style="color: rgb(51, 182, 248);"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
    </footer>
   </body>
<script>
   $(".nav-tabs li.nav-item a.nav-link").click(function() {
 		 $(".nav-tabs li.nav-item a.nav-link").removeClass('active');
	});
</script>
   <!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
		
	</script>
<script>
	$("#reviews").on("keyup input",function()
   {
   	
   		$(this).css('height','ml-auto').css('height',this.scrollHeight+(this.offsetHeight - this.clientHeight));
   	
   	});
   	$("#reviews").on("keydown",function()
   {
   	if(event.key === "Backspace"){

   		$(this).css('height','auto').css('height',this.clientHeight-(this.scrollHeight+this.offsetHeight));
   	}
   	});
</script>


<script type="text/javascript">

/*	["click","mouseover","mouseout"].forEach(function(e){

			document.querySelectorAll('.star')[x].addEventListener(e, show);

		})

*/
    function onClickRating(e){
    	var va = e;
    	getRating(va);

    }
	function getRating(va){
		var vax ="#"+va;
		var vad ="."+va;
	var stars = document.querySelectorAll(vax);
	const output =document.querySelector(vad);

	for(x=0; x<stars.length;x++){
		stars[x].starValue = (x+1);
		["click","mouseover","mouseout"].forEach(function(e){
			stars[x].addEventListener(e, showRating);

		})
	}

	function showRating(e){
		e.preventDefault();
		let type = e.type;
		let starValue = this.starValue;
		console.log(type+" "+starValue);

		var scope = angular.element(document.querySelector('[ng-controller=hospitalController]')).scope();

		if(type==="click"){

				if(starValue >0){
					if(va=='overallStars'){	
						output.innerHTML= starValue;
						scope.rating.overall = starValue;
						scope.$apply();
						console.log("---->"+scope.rating.overall);
				}else if(va=='star1'){	
						output.innerHTML= starValue;
						scope.rating.one = starValue;
						scope.$apply();
						console.log("---->"+scope.rating.one);
				}else if(va=='star2'){	
						output.innerHTML= starValue;
						scope.rating.two = starValue;
						scope.$apply();
						console.log("---->"+scope.rating.two);
				}else if(va=='star3'){	
						output.innerHTML= starValue;
						scope.rating.three = starValue;
						scope.$apply();
						console.log("---->"+scope.rating.three);
				}else if(va=='star4'){	
						output.innerHTML= starValue;
						scope.rating.four = starValue;
						scope.$apply();
						console.log("---->"+scope.rating.four);
				}else{	
						output.innerHTML= starValue;
						scope.rating.five = starValue;
						scope.$apply();
						console.log("---->"+scope.rating.five);
				}
			}
				}
	
		stars.forEach(function(ele, index){
			if(type==="click"){
				if(index<starValue){
					ele.classList.add("orange");
				}else{
					ele.classList.remove("orange");
				}
				}
			if(type==="mouseover"){
				if(index<starValue){
					ele.classList.add("yellow");
				}else{
					ele.classList.remove("yellow");
				}
				}
			if(type==="mouseout"){
				ele.classList.remove("yellow")
				}
			})
		

	}

}
	
	function onSignIn(googleUser) {
		var scope = angular.element('[ng-controller=hospitalController]').scope();
		
    	var profile = googleUser.getBasicProfile();
    	scope.userDetails.id = profile.getId();
    	scope.userDetails.name = profile.getName();
    	scope.userDetails.img = profile.getImageUrl();
    	scope.userDetails.emailId = profile.getEmail();
    	scope.$apply();
    	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
    	  console.log('Name: ' + profile.getName());
    	  console.log('Image URL: ' + profile.getImageUrl());
    	  console.log('Email: ' + profile.getEmail());
    }

    function onLoad() {
      gapi.load('auth2,signin2', function() {
        gapi.auth2.init({
          'client_id': '267702661425-gf2snhtr7pujj8od0et21fp279m975jl'
        });
        gapi.signin2.render('google_signin_button', {
            'onsuccess': 'onSignIn',
            'theme': 'dark'
        });
      });
    }
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
  <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</html>
