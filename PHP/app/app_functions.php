<?
 // FUNCTIONS:
  /*--Display Utility Functions*/
  function Linkify($href, $label)
{
	$link = '<a href="%s">%s</a>' ;
	return sprintf($link, $href, $label);
}
//~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
	
//~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
 	 function CSSTable($arr, $CSS)
	 {
	 	/**
	 	 * Second arg is an associative array with values 
	 	 * for -- 'Row', 'Cell', 'TH' (Table Header).
	 	 * Expects an array ($arr) of associative arrays to display.
	 	 * 
	 	 * *Disabling this: (mzd 2006-04-28)
	 	 * Uses the keys of the first array to make the table header row.
	 	 * *
	 	 * Prints the table.
	 	 * 
	 	 * sample call:
	 	  CSSTable($data, 
				array('Cell' => 'cell', 
					'Row' => 'row', 
					'TH' => 'TableHeader'
					)
				);
		 * 
	 	 */
	 	//$header = array_keys($arr[0]);
	 	//CSSTableRow($header, $CSS['Row'], $CSS['TH']);
	 	
	 	array_walk(
	 	 	$arr, 'WalkCSSTableRow', 
	 	 	array( 'Row' => $CSS['Row'], 'Cell' => $CSS['Cell'] )
	 	);
	 	
	 	//$arr = array_merge($header, $arr);
	 	WrapInCSS($arr, 'Table', 'TABLE');
	 	
	 	//debug('arr', $arr);
	 	array_walk_recursive($arr, 'echoCSSTable');
	 }
//~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
	 function CSSTableRow(&$arr, $RowCSS, $CellCSS)
	 {
	 	/**for an array destined to be a row
	 	 * wrap each item in a tag
	 	 * then wrap that result with a row tag
	 	 */
	 	array_walk($arr, 'WalkWrapInCSS', array($CellCSS, 'TD'));
	 	
	 	WrapInCSS($arr,$RowCSS, 'TR');
	 	
	 }
//~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
	 function WrapInCSS(&$item, $class, $tag)
	 {
	 	/** 
	 	 * wraps $item in a tag of $tag with CSS class of $class
	 	 * 
	 	 * array_merge is used so that this function can be used to wrap entire associative arrays.
	 	 * the begining and end tags are placed in seperate array indices such that
	 	 *  [0] = <tag class="class">
	 	 *  [1] = $item
	 	 *  [2] = </tag>
	 	 */
	 	 if(is_array($item) == false)
	 	 {
	 	 	$item = array($item);
	 	 }
	 	 $item = 
	 		array_merge(
	 			array_merge(
					array("\t<$tag class=\"$class\">\n\t\t"),
					$item
				),
				array("\n\t</$tag>\n")
			);
	 }
//~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
	 /** 
	  * these "Walk..." functions merely wrap other functions for
	  * calling with array_walk
	  */
	function echoCSSTable($item, $key)
	{
			echo $item;
	}	 
	 function WalkCSSTableRow(&$item, $key, $arr)
	 {
	 	$CellCSS = $arr['Cell'];
	 	$RowCSS = $arr['Row'];
	 	CSSTableRow($item, $RowCSS, $CellCSS);
	 }
	 function WalkWrapInCSS(&$item, $key, $args)
	 {
	 	$class = $args[0];
	 	$block = $args[1];
	 	WrapInCSS($item, $class, $block);
	 }
 
//~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
 function DebugException($e, $msg = '') 
 {
 	global $debug;
 	if ($debug) {
 	//if (TRUE) {
	 	echo '<pre>';
			echo "$msg\n\n" .
			'Error message: ' . $e->getMessage() . "\n" .
			'Error code: ' . $e->getCode() . "\n" .
			'File and line: ' . $e->getFile() . '(' . $e->getLine() . ") \n" .
			'Trace: ' . $e->getTraceAsString() . "\n" .
			 '</pre>';
 	}
 }
//~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
  function debug($varname, $var) {
 	global $debug;	//defined in setup.php
 	if ($debug) {
 		if (is_array($var))
 		{
 			echo '<pre>';
			echo $varname . "\n";
 			print_r($var);
 			echo '</pre>';
		} else {
 			printf("%s: [%s]<br><br>", $varname, $var);
 		}
 	}
 }
 //~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
function QS ($InputStr = '') {
// FUNCTION QS(ByVal zQS_InputStr)
/* * *
 * M Z DARYABEYGI, APRIL 2002 -- takes a string in the form of
 * "name1=value1&name2=value2&name3=value3" will change only those variable in
 * the QS -- passing an empty string will return the QS unchanged -- remove a
 * variable with "name=", (missing value) -- BUG FIX 050102 added verification
 * of search for variable name -- PORTED from ASP on April 7 2005
 * -- DEPENDS: global $gQS, should be set to Request or can be modified before
 * this func is called * */
 
// $Name
// $Value
// $NameFound
// $ExitLoop
// $StartPos
// $Temp
// $LeftTemp
// $CheckName
// $TempVal
// $return

global $gQS;

if (strpos($gQS, '?') === 0) {
	$gQS = substr($gQS, 1);
}
if ($InputStr != "") {
	$return = strtolower($gQS) ;
	$InputStr = strtolower($InputStr);
		
	while (strpos($InputStr,"=") !== false) {
		$Name = substr($InputStr,0,strpos($InputStr,"="));
		$InputStr = substr($InputStr,(strpos($InputStr,"=") + 1));
		
		if (strpos($InputStr, "&") === 0 || $InputStr == "") {
			//this does not make sense does it?
			$Value = "";
			$InputStr = substr($InputStr, strpos($InputStr, "&")+1 );
		} else {		
			if (strpos($InputStr,"&") !== false) { 
				$Value = substr($InputStr,0,strpos($InputStr,"&"));
				$InputStr = substr($InputStr, strpos($InputStr, "&")+1 );
			} else {
				$Value = $InputStr;
			}	
		}
		//STEP TWO;
//		print "***step two***<br>";
		//find name in QS 
		$NameFound = false;
		$ExitLoop = false;
		$StartPos = 0;
		$Temp = '';
		while ($ExitLoop != true) {
			if (strpos($return, $Name, $StartPos) !== false) { //'is the var found in the string?
				//the variable already exists in the QS
				$Temp 		= substr($return, strpos($return, $Name, $StartPos));//' find name and chop there
				$Temp 		= substr($Temp, strpos($Temp, "=")+1); //'find value and chop there, Temp is now right side of QS from the value on
				$LeftTemp 	= substr($return, 0, strlen($return) - strlen($Temp) ); //'get left half (up to, and incl, equal sign)
				if ( strrpos($LeftTemp, "&") !== false) {
					$CheckName 	= substr($LeftTemp, -1 * (strlen($LeftTemp) - strrpos($LeftTemp, "&")-1 ) ); //'gets var name including "="
				} else {
					$CheckName 	= $LeftTemp ; //'gets var name including "="
				}
				$CheckName 	= substr($CheckName, 0, strlen($CheckName)-1); //' chop "="

				if ($CheckName == $Name) { 
					$ExitLoop 	= true;
					$NameFound 	= true;
				} else { //'we must try again
					if (strpos($Temp, "&") !== false) { //'we are not at the last value
						$StartPos = strlen($LeftTemp) + strpos($Temp, "&" ) + 1; //' next starting position
					} else { //' we have reached the end, no exact match has been found
						$ExitLoop = true;
					}
				}
			} else { //' name not found
				$ExitLoop = true;
			}
			if (strlen($Temp) == 0) {
				$ExitLoop = true; //' If an exact match has not been found
			}
		}
		if ($NameFound == true) { //'Once the var is found, replace the value
			if (strpos($Temp,"&") !== false ) { //'check to make sure we are not at the last value
				$TempVal = substr($Temp, 0, strlen($Temp) - strlen(substr($Temp, strpos($Temp, "&" )+1 ) ) ); //'get current value
				$Temp = substr($Temp, strpos($Temp, "&" )); //'find end of value and chop there
				if (strtoupper($TempVal) <> strtoupper($Value) ) {
					if ($Value !== "" ) {
						$return = $LeftTemp . $Value . $Temp; //'stick in the new value 
					} else { //cut the unnecessary name=
						if (strpos($LeftTemp, "&") <> 0 ) { //'check to make sure we are not at the first Value
							$LeftTemp = substr($LeftTemp, 0, strrpos($LeftTemp, "&") ); //' drop the name and preceding "&"
							/*' for posterity, that was:
							' find the pos, from the right, of the "&"
							' subtract that pos from the total length to get the lengthe we need and
							' take a string of that lenght starting from the first (left) pos.
							*/
							$return = $LeftTemp . $Temp;
						} else { //'we are at the first value
							$return = $Temp; //'stick em back together minus empty value
						}
					}
				} else {
					// ?
					//'we did this for nothing and so move on...
					//i.e. -- the value would be unchanged
				}
			} else {  //'we are at the last value
				if (strtoupper($Temp) != strtoupper($Value) )  {
					if ($Value != "" ) {
						$return = $LeftTemp . $Value; //'stick in the new value 
					} else {
						if (strrpos($LeftTemp, "&") !== false ) { 
							$LeftTemp = substr($LeftTemp, 0, strrpos($LeftTemp, "&") );
							$return = $LeftTemp;
						} else {
							$return = "";
						}
					}
				} else {
					//?
				}
			}
		} else { //'if the name does not exist
			if ($Value !== "" ) { 
				if ($return !== "" ) {
					$return .=  "&" . $Name . "=" . $Value;
				} else {
					$return = $Name . "=" . $Value;
				}
			} else { 
				//'we did this for nothing and so move on...
			}
		}
	} 
} else {
	$return = $gQS;
}	
if (strpos($return, "&") === 0 ) { 
	$return = substr($return, 1, strlen($return)-1);
}
if (strrpos($return, "&") === strlen($return) ) { 
	$return = substr($return, 0, strlen($return)-1);
}
if (strpos($return, "?") !== 0 ) {
$return = "?" . $return;
}
return $return;
} //~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,
?>