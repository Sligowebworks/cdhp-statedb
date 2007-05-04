<?php
/*
 * Created on Dec 1, 20059:20:41 PM
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * CDHP State Database
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * COPYRIGHT 2005
 * Sligo Computer Services Programmers' Co-op
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 */
 
 class AppState 
 {
 	private $page_name;
 	private $state_array;
 	
 	public function Initialize()
 	{
 		global $_SESSION;
 		global $db;
 		
 		if (isset($_SESSION['AppState']) == false)  
 		{	//set session defaults here
 			$_SESSION['AppState'] = array();
 			$_SESSION['AppState']['state'] = 'US';
 			
		}
		$_SESSION['AppState']['db'] = $db;
 			
 	 	$this->state_array = & $_SESSION['AppState'];
 		
 		$this->state_array['PageName'] = 
 			substr( $_SERVER['PHP_SELF'], 
 				1 + strrpos($_SERVER['PHP_SELF'], '/'), 
 					strrpos( $_SERVER['PHP_SELF'], '.') - strrpos($_SERVER['PHP_SELF'], '/') - 1
 					);
 		
 		try
 		{
 			$this->GetPageID();
 		} catch (Exception $e)
 		{
 			exit;
 		}
 		
 		$this->state_array = array_merge($this->state_array, $_GET, $_POST);
 		debug('AppState', $_SESSION['AppState']);
 	}
 	private function GetPageID()
 	{
 		global $db;
 		
 		$rs_page = new RecordSet();
 		$rs_page->SetDataConnection($db);
 		$rs_page->SetSQL("SELECT ID, PageName, MenuSectionKey, PageTitle FROM glsMenuItems WHERE PageName = '{$this->state_array['PageName']}'");
 		
 		try 
 		{
 			$rs_page->Populate();
 			$this->state_array['z'] = $rs_page->arr_rows[0]['ID'];
 			$this->state_array['y'] = $rs_page->arr_rows[0]['MenuSectionKey'];
 			$this->state_array['Title'] = $rs_page->arr_rows[0]['PageTitle'];
 			debug('menu key rs', $rs_page->arr_rows);
 		} catch (Exception $e)
 		{
 			$msg = 'PageName query failed!';
 			DebugException($e, $msg.$rs_page->GetSQL());
 			echo "<span style=\"color:red; size:4em;\">$msg</span>";
 			throw $e;
 		}
 		
 		if ($this->state_array['z'] > 0)
 		{
 			$this->state_array['blnDataPage'] = true;
 		} else
 		{
 			$this->state_array['blnDataPage'] = false;
 		}
 		
 		
 	}
 	public function GetAppStateArray()
 	{
 		return $this->state_array;
 	}

 	
 	
 }
 
 
?>
