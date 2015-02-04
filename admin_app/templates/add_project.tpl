<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>New Project</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <link href="../css/bootstrap.min.css" rel="stylesheet">
  <!--[if lt IE 9]>
	 <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script type="text/javascript" src="../tinymce/tinymce.min.js"></script>
  <script>
$(document).ready(
	function(){
		/* add jquery calendar */
		$( "#datepicker" ).datepicker();
		tinymce.init(
			{
				selector: "textarea"
			}
		);
		/* rewrite subimt */
		/*$( "#create_project" ).submit(
			function(event){
				event.preventDefault();
			     var formData = new FormData($("#create_project")[0]);
				 settings = {
					type:'POST',
					data: formData,	
					cache: false,
					contentType: false,
					processData: false
					};
				  url = "../projects";

				jQuery.ajax(url, settings);		
			}
		);*/
	}
);
</script>
</head>
<body>
	<div class="container">
		<form id="create_project"  class="form-horizontal" enctype="multipart/form-data" action="../projects" method="post">
			<div class="form-group">
				<input type="text" id="name" name="name" class="form-control" placeholder="Project Name">
			</div>
			<div class="form-group">
				<input type="text" id="tag" name="tag" class="form-control" placeholder="Project Tags(seperated by ,)">
			</div>
			<div class="form-group">
				<input type="text"  class="form-control" id="datepicker" name="date" placeholder="Project Date">
			</div>
			<div class="form-group">
				<input type="file" id="img" name="img" class="form-control">
			</div>
			<div class="form-group">
				<textarea  class="form-control" id="content" name="content" rows="10" placeholder="Description"></textarea>
			</div>
			<input type="submit" class="btn btn-default" value="Submit">
		</form>
	</div> <!-- container -->

<!-- script references -->	
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
