<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/favicon.png">

    <title>{{ name.upper() }} - BLOG </title>

    <!-- Bootstrap core CSS -->
    <link href="/theme/assets/css/bootstrap.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="/theme/assets/css/main.css" rel="stylesheet">
	<link href="/theme/assets/css/myStyle.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Static navbar -->
	% include('header.tpl')

	<!-- +++++ Posts Lists +++++ -->
	<!-- +++++ First Post +++++ -->
	<div id="grey">
	    <div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<p><img src="/theme/assets/img/user.png" width="50px" height="50px"> <ba>Stanley Stinson</ba></p>
					<p><bd>January 18, 2014</bd></p>
					<h4>The Amazing Spiderman</h4>
					<p><b>Spider-Man</b> is a fictional character, a comic book superhero that appears in comic books published by Marvel Comics. Created by writer-editor Stan Lee and writer-artist Steve Ditko, he first appeared in Amazing Fantasy #15 (cover-dated Aug. 1962). </p>
					<p>Lee and Ditko conceived the character as an orphan being raised by his Aunt May and Uncle Ben, and as a teenager, having to deal with the normal struggles of adolescence in addition to those of a costumed crimefighter.</p>
					<p><a href="blog01.html">Continue Reading...</a></p>
				</div>

			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /grey -->
	
	<!-- +++++ Second Post +++++ -->
	<div id="white">
	    <div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<p><img src="/theme/assets/img/user.png" width="50px" height="50px"> <ba>Stanley Stinson</ba></p>
					<p><bd>January 3, 2014</bd></p>
					<h4>An Image Post</h4>
					<p><img class="img-responsive" src="assets/img/blog01.jpg" alt=""></p>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
					<p><a href="blog01.html">Continue Reading...</a></p>
				</div>

			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /white -->
	
	<!-- +++++ Third Post +++++ -->
	<div id="grey">
	    <div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<p><img src="/theme/assets/img/user.png" width="50px" height="50px"> <ba>Stanley Stinson</ba></p>
					<p><bd>January 01, 2014</bd></p>
					<h4>Believe In Yourself</h4>
					<p class="bq">"A bird sitting on a tree is never afraid of the branch breaking, because her trust is not in the branch, but in her own wings."</p>
				</div>

			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /grey -->
	
	
	
	<!-- +++++ Footer Section +++++ -->
	% include('footer.tpl')	

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/theme/assets/js/bootstrap.min.js"></script>
  </body>
</html>
