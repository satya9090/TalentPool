
<%@page import="com.yotabytes.talentpool.model.TalentQuestion"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<hr>
<div class="container bootstrap snippet">

	<div class="row">

		<div class="col-sm-9">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#home">Menu 1</a></li>
				<li><a data-toggle="tab" href="#messages">Menu 2</a></li>
				<li><a data-toggle="tab" href="#settings">Menu 3</a></li>
				<li><a data-toggle="tab" href="#menu4">Menu 4</a></li>
			</ul>


			<div class="tab-content">
				<div class="tab-pane active" id="home">
					<hr>
					<form class="form" action="candidateInformation" method="post" id="registrationForm">
						<div class="form-group">

							<div class="col-xs-6">
								<label for="first_name"><h4>First name</h4></label> <input
									type="text" class="form-control" name="firstname"
									id="first_name" placeholder="first name"
									title="enter your first name if any.">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="last_name"><h4>Last name</h4></label> <input
									type="text" class="form-control" name="lastname"
									id="last_name" placeholder="last name"
									title="enter your last name if any.">
							</div>
						</div>

						<div class="form-group">

							<div class="col-xs-6">
								<label for="phone"><h4>Location</h4></label> <input type="text"
									class="form-control" name="location" id="location"
									placeholder="somewhere" title="enter a location">
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-6">
								<label for="mobile"><h4>Mobile</h4></label> <input type="text"
									class="form-control" name="mobile" id="mobile"
									placeholder="enter mobile number"
									title="enter your mobile number if any.">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="email"><h4>Email</h4></label> <input type="email"
									class="form-control" name="emailId" id="email"
									placeholder="you@email.com" title="enter your email.">
							</div>
						</div>
						 <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="collageName"><h4>collage name</h4></label>
                              <input type="text" class="form-control" id="collage_name" name="collage_name" placeholder="collage_name" title="enter your collage_name">
                          </div>
                      </div>
                      
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="passing_year"><h4>Passing Year</h4></label>
                              <input type="text" class="form-control" id="passing_year" name="passing_year" placeholder="passing_year" title="enter your passing_year">
                          </div>
                      </div>

						 <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               
                            </div>
                      </div>
					</form>

					<hr>

				</div>
				<!--/tab-pane-->
				<div class="tab-pane" id="messages">

					
					<h2></h2>

					<hr>
					<form class="form" action="##" method="post" id="registrationForm">
						
						<div class="form-group">
							<div class="col-xs-6">

								what u want ?<input type="text" class="form-control" name="first_name"
									id="first_name" value="1" disabled><br>
								 <select	class="form-control buttom" name="TalentQuestion">

									<option value="1">satya</option>
									<option value="">nucigent</option>
									<option value="">satya</option>
									<option value="">jitesh</option>
								</select>

							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-6">

								what u want ?<input type="text" class="form-control" name="first_name"
									id="first_name" value="1" disabled><br>
								 <select	class="form-control buttom" name="TalentQuestion">

									<option value="1">satya</option>
									<option value="">nucigent</option>
									<option value="">satya</option>
									<option value="">jitesh</option>
								</select>

							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-6">

								what u want ?<input type="text" class="form-control" name="first_name"
									id="first_name" value="1" disabled><br>
								 <select	class="form-control buttom" name="TalentQuestion">

									<option value="1">satya</option>
									<option value="">nucigent</option>
									<option value="">satya</option>
									<option value="">jitesh</option>
								</select>

							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-6">

		 						what u want ?<input type="text" class="form-control" name="first_name"
									id="first_name" value="1" disabled><br>
								 <select	class="form-control buttom" name="TalentQuestion">

									<option value="1">satya</option>
									<option value="">nucigent</option>
									<option value="">satya</option>
									<option value="">jitesh</option>
								</select>

							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-6">

								what u want ?<input type="text" class="form-control" name="first_name"
									id="first_name" value="1" disabled><br>
								 <select	class="form-control buttom" name="TalentQuestion">

									<option value="1">satya</option>
									<option value="">nucigent</option>
									<option value="">satya</option>
									<option value="">jitesh</option>
								</select>

							</div>
						</div>
						


						<div class="form-group">
							<div class="col-xs-12">
								<br>
								<button class="btn btn-lg btn-success" type="submit">
									<i class="glyphicon glyphicon-ok-sign"></i> Save
								</button>

							</div>
						</div>
					</form>

				</div>
				<!--/tab-pane-->
				<div class="tab-pane" id="settings">


					<hr>
					<form class="form" action="candidateExperience" method="post" id="registrationForm">
						<div class="form-group">

							<div class="col-xs-6">
								<label for="Project Name"><h4>Project Name</h4></label> <input
									type="text" class="form-control" name="project_name"
									id="project_name" placeholder="Project Name"
									title="enter your Project Name if any.">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="last_name"><h4>start date</h4></label> <input
									type="date" class="form-control" name="start_date"
									id="start_date" placeholder="start_date"
									title="enter your start date.">
							</div>
						</div>

						<div class="form-group">

							<div class="col-xs-6">
								<label for="end_date"><h4>end date</h4></label> <input
									type="date" class="form-control" name="end_date" id="end_date"
									placeholder="end_date" title="enter your end_date">
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-6">
								<label for="mobile"><h4>Technology used</h4></label> <input
									type="text" class="form-control" name="Technology_used"
									id="Technology" placeholder="enter Technology"
									title="enter your Technology if any.">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="description"><h4>description</h4></label> <input
									type="text" class="form-control" name="description"
									id="description" placeholder="description"
									title="enter your description">
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-12">
								<br>
								<button class="btn btn-lg btn-success pull-right" type="submit">
									<i class="glyphicon glyphicon-ok-sign"></i> Save
								</button>

							</div>
						</div>
					</form>


				</div>

				<div class="tab-pane" id="menu4">


					<hr>
					<form class="form" action="##" method="post" id="registrationForm">

						<div class="form-group">
							<div class="col-xs-12">
								<br>
								<button class="btn btn-lg btn-success pull-right" type="submit">
									<i class="glyphicon glyphicon-ok-sign"></i> Save
								</button>

							</div>
						</div>
					</form>


				</div>

				<script type="text/javascript">
					$(document).ready(function() {

						var readURL = function(input) {
							if (input.files && input.files[0]) {
								var reader = new FileReader();

								reader.onload = function(e) {
									$('.avatar').attr('src', e.target.result);
								}

								reader.readAsDataURL(input.files[0]);
							}
						}

						$(".file-upload").on('change', function() {
							readURL(this);
						});
					});
				</script>

			</div>
			<!--/tab-pane-->
		</div>
		<!--/tab-content-->

	</div>
	<!--/col-9-->
</div>
<!--/row-->
