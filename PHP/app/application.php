<?php
/*
 * Created on Oct 10, 2005
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
require ("app_setup.php");

$arr = $app->GetAppStateArray();

$body = new DisplayContainer();
$body->SetAppStateArray($arr);

$menu = new SideMenu();
$menu->SetAppState($arr);
$menu->SetConn($db);
$menu->Ready();

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<LINK REL=StyleSheet HREF="style.css" TYPE="text/css">
	<title>CDHP SOS :: <?php echo $arr['Title'] ?></title>
</head>

<body>

		<?php $menu->RenderTopBanner() ?>


<div id="LowerWrap">
		<?php $menu->RenderSide() ?>
		
	<div id="ContentWrapper"> 
			<?php
			
			if ($arr['PageName'] == 'About')
			{
				echo "<H1>About SOS<BR> And Disclaimer</H1>";
			} 
			else if ($arr['PageName'] == 'FAQ')
			{
				echo "<H1>FAQ</H1>";
			}
			else
			{
				$body->DoIt(); 
			}
			
			?>
	</div>
</div>
</div>
</body>
</html>
