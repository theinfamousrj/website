<?php include 'constants.php'; ?>
<?php include 'tweetgrab.php'; ?>

<html>

  <head>	
    <title>Raymond John Hill</title>
	<meta name="Description" content="The personal portfolio of Raymond John Hill">
	<meta name="keywords" content="Raymond John Hill, portfolio, resume, programmer, developer, coder, physicist, mathematician">
	<meta name="author" content="Raymond John Hill">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./style.css">
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet" type="text/css">
  </head>

  <body>
    <div class="logo">
      <img src="./images/logo.png" alt="RJH">
	  <h1>RAYMOND JOHN HILL</h1>
	</div>
	
	<div class="nav">
	<?php echo '['.$github_full.'] ['.$linkedin_full.'] ['.$coderwall_full.'] ['.$twitter_full.']'."\n" ?>
	</div>
	<hr />
    <div class="tweet">
	  <?php echo getTopTweets('3', 'theinfamousrj') ?>
	</div>
  </body>

</html>
