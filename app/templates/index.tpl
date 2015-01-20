<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>{{name.upper()}} - B_Master </title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">
	<link href="assets/css/myStyle.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/hover.zoom.js"></script>
    <script src="assets/js/hover.zoom.conf.js"></script>
	<script src="assets/js/myAlertBox.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  <!-- +++++ alert box+++++ -->
  <div id="dialogoverlay"></div>
  <div id="dialogbox">
	<div>
		<div id="dialogboxhead">
			<span id="admin-icon" class="glyphicon glyphicon-user" aria-hidden="true"></span>Go To Admin Page
		</div>
		<div id="dialogboxbody">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="username">
				<input type="password" class="form-control" placeholder="password">
			</div>
		</div>
		<div id="dialogboxfoot"></div>
	</div>
  </div>  

  <!-- +++++ header +++++ -->
  %  include('header.tpl')

	<!-- +++++ Welcome Section +++++ -->
	<div id="ww">
	    <div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 centered">
					<img id="profile" onmouseover="this.src='assets/img/user_hover.png'" onmouseout="this.src='assets/img/user.png'" src="assets/img/user.png" onclick="myAlertBox.render()" alt="Tony">
					<h1>Hi, I am {{ name.title() }}!</h1>
					<p>Hello everybody. I'm Tony, a free handsome bootstrap theme coded by BlackTie.co. A really simple theme for those wanting to showcase their work with a cute & clean style.</p>
					<p>Please, consider to register to <a href="http://eepurl.com/IcgkX">our newsletter</a> to be updated with our latest themes and freebies. Like always, you can use this theme in any project freely. Share it with your friends.</p>
				
				</div><!-- /col-lg-8 -->
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /ww -->
	
	
	<!-- +++++ Projects Section +++++ -->
	
	<div class="container pt">
		<div class="row mt centered">	
			<div class="col-lg-4">
				<a class="zoom green" href="work01.html"><img class="img-responsive" src="assets/img/portfolio/port01.jpg" alt="" /></a>
				<p>APE</p>
			</div>
			<div class="col-lg-4">
				<a class="zoom green" href="work01.html"><img class="img-responsive" src="assets/img/portfolio/port02.jpg" alt="" /></a>
				<p>RAIDERS</p>
			</div>
			<div class="col-lg-4">
				<a class="zoom green" href="work01.html"><img class="img-responsive" src="assets/img/portfolio/port03.jpg" alt="" /></a>
				<p>VIKINGS</p>
			</div>
		</div><!-- /row -->
		<div class="row mt centered">	
			<div class="col-lg-4">
				<a class="zoom green" href="work01.html"><img class="img-responsive" src="assets/img/portfolio/port04.jpg" alt="" /></a>
				<p>YODA</p>
			</div>
			<div class="col-lg-4">
				<a class="zoom green" href="work01.html"><img class="img-responsive" src="assets/img/portfolio/port05.jpg" alt="" /></a>
				<p>EMPERORS</p>
			</div>
			<div class="col-lg-4">
				<a class="zoom green" href="work01.html"><img class="img-responsive" src="assets/img/portfolio/port06.jpg" alt="" /></a>
				<p>CHIEFS</p>
			</div>
		</div><!-- /row -->
	</div><!-- /container -->
	
	
	<!-- +++++ Footer Section +++++ -->
	% include('footer.tpl', name = name)
	

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
