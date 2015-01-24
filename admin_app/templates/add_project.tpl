<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <title>New Project</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <link href="../css/bootstrap.min.css" rel="stylesheet">
  <!--[if lt IE 9]>
	 <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
 <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <script>

$(document).ready(
	function(){
		/* add jquery calendar */
		$( "#datepicker" ).datepicker();
		
		/* rewrite subimt */
		$( "#create_project" ).submit(
			function(event){
				event.preventDefault();
				 data = {
					"name": $("#name").val(),
					"tag": $("#tag").val(),
					"time":$("#datepicker").val(),
					"content":$("#content").val()
					};
				 settings = {
					type:'POST',
					contentType: 'application/json',
					dataType:'json',
					data: JSON.stringify(data),	
					};
				  url = "../projects";

				jQuery.ajax(url, settings);		
			}
		);
	}
);
</script>
</head>
<body>
	<div class="container">
		<form id="create_project"  class="form-horizontal">
			<div class="form-group">
					<input type="text" id="name" class="form-control" placeholder="Project Name">
			</div>
			<div class="form-group">
					<input type="text" id="tag" class="form-control" placeholder="Project Tags(seperated by ,)">
			</div>
			<div class="form-group">
					<input type="text"  class="form-control" id="datepicker" placeholder="Project Date">
			<div>
					<textarea  class="form-control" id="content" rows="10" placeholder="Description"></textarea>
			</div>
		<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div> <!-- container -->

<!-- script references -->	
<script src="../js/bootstrap.min.js"></script>

</body>
</html>
