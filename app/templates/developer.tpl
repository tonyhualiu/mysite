<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>{{ name.upper() }} - DEVELOPER</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">
	<link href="assets/css/myStyle.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/hover.zoom.js"></script>
    <script src="assets/js/hover.zoom.conf.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Static navbar -->
	% include('header.tpl')	
	
	<!-- +++++ Projects Section +++++ -->
	
	<div class="container pt">
		<div class="row mt">
			<div class="col-lg-6 col-lg-offset-3 centered">
				<h3>MY PROJECTS</h3>
				<hr>
				<p>As a developer, I did several interesting projects.</p>
			</div>
		</div>
		% i = 0
		% for project in projects:
		%	if i % 3 == 0:
				<div class="row mt centered">	
		%	end
			<div class="col-lg-4">
				<a class="zoom purple" href="./projects/{{project.id}}"><img class="img-responsive" src="{{project.imgURL}}" alt="" /></a>
				<p>{{project.name}}</p>
			</div>
		%	if i % 3 == 2 or i == len(projects) - 1:
			</div>
		%   end 
		%   i += 1
		% end
	</div><!-- /container -->
	
	
	<!-- +++++ Footer Section +++++ -->
	% include('footer.tpl')	

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
