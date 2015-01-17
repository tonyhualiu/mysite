<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>{{ name.upper() }} - Dancer </title>

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

    <!-- +++++ Header +++++ -->
	% include('header.tpl')	
	
	<!-- +++++ Projects Section +++++ -->
	
	<div class="container pt">
		<div class="row mt">
			<div class="col-lg-6 col-lg-offset-3 centered">
				<h3>MY PERFORMANCE</h3>
				<hr>
				<p>Show your work here. Dribbble shots from the awesome designer <a href="http://dribbble.com/wanderingbert">David Creighton-Pester</a>.</p>
			</div>
		</div>
		
		% for video in videos:
	    <div class="row mt centered"> 
			<!-- <div class="col-lg-4"> -->
				<!-- div class="embed-responsive embed-responsive-4by3"><iframe src="{{video['url']}}" frameborder="0" allowfullscreen></iframe -->
				<!-- /div -->
				<iframe class="embed-responsive embed-responsive-16by9" src="{{video['url']}}" frameborder="0" allowfullscreen></iframe>
				<p>{{video['description']}}</p>
			<!-- </div> --> 
		 </div>
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
