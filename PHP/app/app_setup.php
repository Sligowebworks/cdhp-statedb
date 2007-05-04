<?
session_start();
error_reporting(E_STRICT);
error_reporting(E_ALL);

//phpinfo();
global $debug;
$debug = 0;
global $gQS;
$gQS = $_SERVER['QUERY_STRING'];

if (isset($debug)) {
	if ($debug == 0 || false) {
		$debug = false;
	} else {
		$debug = true;
	}
} else {
	$debug = false;
}

require("app_functions.php");

function __autoload($class_name) 
{	//removes need to include class files.
	require_once 'objdef/'.$class_name . '.php';
}
	//session_start();
	//header("Cache-control: private");  // IE 6 Fix.
	//debug var, no real purpose:
	//$_SESSION['count'] = $_SESSION['count'] + 1;

global $db;
if (!$db){
	$db = odbc_connect('DRIVER={SQL Server};SERVER=INFERNO2;DATABASE=CDHPState', 'CDHPState', 'BrushaBrusha');
}

$app = new AppState();
$app->Initialize();

// ********** constants: ************
define("SELF", $_SERVER['PHP_SELF']);

// ************* Bread Crumbs *********
if (!isset($_SESSION['BreadCrumbs'])) {
	$_SESSION['BreadCrumbs'] = array(0 => SELF);
}
if (!isset($_SESSION['BreadCrumbs_QS'])) {
	$_SESSION['BreadCrumbs_QS'] = array(0 => QS());
}
$arr_BreadCrumbs =& $_SESSION['BreadCrumbs']; //assign by reference
$arr_BreadCrumbs_QS =& $_SESSION['BreadCrumbs_QS']; //assign by reference

if (end($arr_BreadCrumbs) != SELF && !(strpos(SELF, "do_") || strpos(SELF, "db_") )) {
	// if navigated away from page and not an interstitial
	$arr_BreadCrumbs[] = SELF;
}
if (end($arr_BreadCrumbs_QS) != QS() && !(strpos(SELF, "do_") || strpos(SELF, "db_") )) {
	// if QS has changed and not an interstitial
	if (count($arr_BreadCrumbs) != count($arr_BreadCrumbs_QS) + 1) {
		//if the QS changes but the page does not.
		$arr_BreadCrumbs_QS[count($arr_BreadCrumbs) -1] = QS();
	} else {
		$arr_BreadCrumbs_QS[] = QS();
	}
}

// ******** App State Navigation Vars  **************

// ************** DEFAULTS *********** 

?>
