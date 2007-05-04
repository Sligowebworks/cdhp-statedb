<?php
/*
 * Created on Oct 12, 2005
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
 
 $db = odbc_connect('DRIVER={SQL Server};SERVER=INFERNO2;DATABASE=CDHPState', 'sa', 'bytes4us');
 
 odbc_exec($db, "DELETE FROM ProcStatTrans;");
 
 $queryStates = "SELECT State FROM StateAbbrev ORDER BY ID;";
 
 $States = odbc_exec($db, $queryStates);
 
  while ($row = odbc_fetch_array($States)) {
 	$arrStates[] = $row['State'];
 }
 
 $improrttables = array(
	'ProcStat1TIEFE',
	'ProcStat1PR',
	'ProcStat2TERADS',
	'ProcStat2TERPDS',
	'ProcStat2TERTDS') ;
	
 for ($i = 0; $i < count($arrStates); $i++) {
 	for ($n = 0; $n < count($improrttables); $n++) {
 		//$arrSuffixPlusStates[] = '\'' . substr($improrttables[$n], 8) . '\', '. $arrStates[$i] . '\'';
 		$arrSuffixPlusStates[] = array(substr($improrttables[$n], 8), $arrStates[$i]);
 	}
 }
 echo "<pre>";
 //print_r($arrSuffixPlusStates);
echo count($arrSuffixPlusStates);

 for ($i = 0 ; $i < count($arrSuffixPlusStates); $i++) {
 	set_time_limit(10);
 	
 	$Suffix = $arrSuffixPlusStates[$i][0];
 	$State = $arrSuffixPlusStates[$i][1];
 	
 	$insert = "INSERT ProcStatTrans (tablesuffix, State) " .
				"VALUES ('$Suffix', '$State');";
//	echo "$insert\n";
	odbc_exec($db, $insert);
	
 	$query = "SELECT [$State], [year] = cast(year as varchar(4)), range, type FROM ProcStat$Suffix;";
	//echo"$query\n";
	$result = odbc_exec($db, $query);
	while ($row = odbc_fetch_array($result)) {
		$column = trim($row['year']) . ' - '. trim($row['range']) . ' - ' . trim($row['type']);
		$value = trim($row[$State]);
		$update = "UPDATE ProcStatTrans SET [$column] = '$value' WHERE tablesuffix = '$Suffix' AND State = '$State';";
//		echo "$update\n";
		odbc_exec($db, $update);
	}
 }
 echo "</pre>";
 ?>
