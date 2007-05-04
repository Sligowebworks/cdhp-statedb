<?php
/*
 * Created on Oct 28, 20058:41:56 AM
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * CDHP State Database
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * COPYRIGHT 2005
 * Sligo Computer Services Programmers' Co-op
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 */
 
 class DisplayContainer 
 {
 	public $arr_app_state;
 	public $db;
 	private $DataPageAbort;
 	private $state_abbrev;
 	private $menu_item_key;
 	private $page_title;
 	private $rs_views;
 	private $arr_charts;
 	private $arr_view_names;
 	private $num_views;
 	public $num_charts; //for debug
 	
 	private $rs_state_select_list;
 	
 	public function DoIt()
 	{
 		debug('Abort',$this->DataPageAbort);
 		
 		if ($this->DataPageAbort)
 		{
 			$this->DisplayStates();
 			return;
 		}
 		
 		$this->num_views = $this->RetrieveViewNames();
 		debug('numviews', $this->num_views);
 		$this->num_charts = $this->MakeCharts();
 		debug('num_charts', $this->num_charts); 
 		
 		if (isset($this->page_title)) {
 			echo	'<DIV class="ContentHeader">'. $this->page_title . '</DIV>';
 		}
 		
 		return  $this->DisplayCharts();;
 		
 	}
 	private function DisplayStates()
 	{
 		$this->rs_state_select_list = new RecordSet();
		
		$query = "SELECT State, Long FROM StateAbbrev ORDER BY ID;";
		
		$this->rs_state_select_list->SetSQL($query);
		$this->rs_state_select_list->SetDataConnection($this->db);
		$this->rs_state_select_list->Populate();
		
		foreach ($this->rs_state_select_list->arr_rows as $key => $state)
		{	
			echo Linkify('page3.php?state='. $state['State'], $state['Long']);
			echo "<br>";
		}
 	}
 	private function DisplayCharts()
 	{
 		foreach($this->arr_charts as $index => $chart)
 		{	
 			debug('$this->arr_charts as $index', $index);
 			$chart->Display();
 		}
 		foreach($this->arr_charts as $index => $chart)
 		{
 			$chart->DisplayFootnotes();
 		}
 	}
 	private function MakeCharts()
 	{	
 		$rs = &$this->rs_views;
 		foreach($rs->arr_rows as $index => $row)
 		{
 			 debug("foreach($rs->arr_rows as $index => $row)", $row['view']);
 			 $this->arr_view_names = $row['view'];
 			 
 			 $chart = new Chart();
 			 $chart->SetDataConnection($this->db);
 			 $chart->SetViewName($row['view']);
 			 $chart->SetStateAbbrev($this->state_abbrev);
 			 $chart->SetChartTitle($row['Title']);
 			 debug('state_abbrev', $this->state_abbrev);
 			 debug('$chart->GetViewName()', $chart->GetViewName());
 			 try 
 			 {
 			 	$chart->Populate();
 			 }
 			 catch (Exception $e)
 			 {
 			 	DebugException($e, 'exception in DisplayContainer->MakeCharts()');
 			 }
 			 $this->arr_charts[] = &$chart;
 			 unset($chart);		 
 		}
 		
 		return count($this->arr_charts);
 	}
 	private function RetrieveViewNames()
 	{	
 		if(!is_numeric($this->menu_item_key)) throw new Exception('menu key is not an integer');
 		
 		$key = $this->menu_item_key;
 		$sql = "SELECT [view] = SQLView, sort, Title FROM tblCharts WHERE MenuItemKey = $key ORDER BY Sort;";
 		debug('RetrieveViewNames() SQL' , $sql);
 		
 		$this->rs_views = new RecordSet();
 		$rs = & $this->rs_views;
 		
 		$rs->SetDataConnection($this->db);
 		$rs->SetSQL($sql);
 		try 
 		{
 			$rs->Populate();
 		} 
 		catch (Exception $e) 
 		{
 			debug('sql error', ($rs->sql_error));
 			debug('empty result', $rs->empty_result);
 			DebugException($e);
 			throw $e;
 		}
 		
 		return $rs->num_rows;
 	}

	public function SetAppStateArray(&$arr)
	{	//tries to extract values from array to assign to members
		$this->arr_app_state = $arr;
		if (!is_array($arr))
		{
			throw new Exception('invalid parameter passed to DisplayContainer->SetAppState');
		}
		
		foreach ($arr as $key => $value) 
		{
			switch ($key)
			{
			case 'z':
				$this->SetMenuItemKey($value);
				break;
			case 'state':
				$this->state_abbrev = $value;
				break;
			case 'db':
				$this->db = $value;
				break;
			case 'blnDataPage' :
				$this->DataPageAbort =  ($value == false) ;
				break;
			case 'Title' :
				$this->page_title = $value;
				break;
			}
		}
	}
	public function SetDataConnection(&$db)
	{
		$this->db = $db;
	}
	public function &GetDataConnection()
	{
		return $this->db;
	}
	public function SetMenuItemKey($int)
	{
		$this->menu_item_key = $int;
	}
	public function GetMenuItemKey()
	{
		return $this->menu_item_key;
	}
	public function SetStateAbbrev($abbrev)
	{
		$this->state_abbrev = $abbrev;
	}
	public function GetStateAbbrev()
	{
		return $this->state_abbrev;
	}
	
	public function __construct()
	{
	}
 }
 
?>
