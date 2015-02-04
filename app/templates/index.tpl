<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/img/favicon.png">

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
				<input id="username" type="text" class="form-control" placeholder="username">
				<input id="password" type="password" class="form-control" placeholder="password">
			</div>
			<div id="login-fail" class="alert alert-warning" role="alert">Seems like you are not Tony? O_O</div>

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
					<p>Hello everybody. I'm Tony, a recent graduate from Carnegie Mellon University. I am currently working at <a href="//minted.com">Minted</a> as a Software Engineer. Check out my <a href="resume" target="_blank">Resume</a> if you'd like to!</p>
					<p>Besides coding, I love dancing, playing the guitar, and writing little essays with agreeable melancholy. Also, I love learning new languages and now I am trying Cantonese.</p>
				
				</div><!-- /col-lg-8 -->
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /ww -->
	
	<!-- +++++ Footer Section +++++ -->
	% include('footer.tpl', name = name)
	

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
