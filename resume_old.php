<?php include 'constants.php'; ?>

<html>

  <head>
	<script language="javascript" type="text/javascript"> 
	function toggle(idOfHidden1, idOfHidden2, idOfHidden3, idOfToggleSwitch) {
		
		var ele1 = document.getElementById(idOfHidden1);
		var ele2 = document.getElementById(idOfHidden2);
		var ele3 = document.getElementById(idOfHidden3);
		var text = document.getElementById(idOfToggleSwitch);
		
		if(ele1.style.display == "block") {
	    	ele1.style.display = "none";
			ele2.style.display = "none";
			ele3.style.display = "none";
			text.innerHTML = "+";
	  	}
		else {
			ele1.style.display = "block";
			ele2.style.display = "block";
			ele3.style.display = "block";
			text.innerHTML = "--";
		}
	} 
	</script>
	
  <head>	
    <title>The Resume of Raymond John Hill</title>
	<meta name="Description" content="The personal portfolio of Raymond John Hill">
	<meta name="keywords" content="Raymond John Hill, portfolio, resume, programmer, developer, coder, physicist, mathematician">
	<meta name="author" content="Raymond John Hill">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel='stylesheet' href='style.css'>
	<link rel='stylesheet' href='resume.css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:400,700' rel='stylesheet' type='text/css'>
  </head>

  <body>
  <br><br><br>

  <center>
    <h1>Raymond John Hill</h1>

	<div>blah</div>
	
	<table width="1000px">
		<tr>
			<td class="one" width="84%">boo</td>
			<td class="two" width="14%">&nbsp;</td>
			<td class="one" width="2%">&nbsp;</td>
		</tr>
		<tr>
			<td class="one">[<a id="tdee" href="javascript:toggle('tText1', 'tText2', 'tText3', 'tdee');">+</a>] click it</td>
			<td class="two">&nbsp;</td>
			<td class="one">&nbsp;</td>
		</tr>
		<tr>
			<td class="one" width="84%" id="tText1" style="display: none">This is here</td>
			<td class="two" width="14%" id="tText2" style="display: none">Other shit here</td>
			<td class="one" width="2%" id="tText3" style="display: none">And what do we have here?</td>
		</tr>
	</table>
	
    <?php echo '['.$github_full.'] ['.$linkedin_full.'] ['.$coderwall_full.'] ['.$codecademy_full.']'."\n" ?>
  </center>
  </body>

</html>

