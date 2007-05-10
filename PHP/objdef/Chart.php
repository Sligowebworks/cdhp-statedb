<?php
/*
 * Created on Oct 28, 200511:38:17 AM
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * project_name
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * COPYRIGHT 2005
 * Sligo Computer Services Programers' Co-op
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * 
 * Responsibility: Respond to Display object events to: retrieve chart data; show chart, chart heading, chart footer.  

 */
 class Chart 
 {
 	public static $footnoteID = 0;
 	public static $columnID = 0;
 	private $db;
 	private $rs_data;
 	private $rs_columns;
 	private $look_and_feel;
 	private $chart_title;
 	private $view_name;
 	//private $sql;
 	private $state_abbrev;
 	
 	private function GiveConnection()
 	{	//called from Set DataConnection
 		$this->rs_data->SetDataConnection($this->db);
 		$this->rs_columns->SetDataConnection($this->db);
 	}
 	private function BuildQueries()
 	{	//called from Populate()
 		debug('state_abbrev', $this->state_abbrev);
 		$query = "SELECT * FROM $this->view_name WHERE State = '$this->state_abbrev';";
 		$this->rs_data->SetSQL($query);
 		
 		$query = "SELECT * FROM glsColumnLabels WHERE ViewName = '$this->view_name';";
 		$this->rs_columns->SetSQL($query);
 	}
 	//*** Public Methods
 	public function Display()
 	{
 		if (!is_object($this->look_and_feel))
 		{
 			$this->look_and_feel = new ChartLookAndFeel();
 		}
 		
		// ChartWrapper
		echo "<div class=\"{$this->look_and_feel->ChartWrapperCSS}\">";
		
 		$this->DisplayOnRows();
 		//$this->DisplayOnCols();
 		
 		echo "\t</div>\n"; // close chart wrapper
 	}
 	public function DisplayOnRows()
 	{
 		//Render Chart Title
 		$ChartTitle = ( $this->chart_title == '' ? "WORKING TITLE, set in tblCharts.Title" : $this->chart_title);
 		echo "<div class=\"{$this->look_and_feel->TitleCSS}\">$ChartTitle</div>";
 		
 		$count = count($this->rs_data->arr_rows);
 		$data = array();
 		
 		for ($x=0; $x<$count; $x++) {
 			foreach( $this->rs_data->arr_rows[$x] as $key => $val)
 			{
 				debug('(x,y)', "($x, $key-$val)");
 				if (is_numeric($val)) {
 					$val = number_format($val);
 				}
 				$data[] = array($key, $val);
 			}
 		}
 		
 		$shift = array_shift($data);// remove the "State" row
 		
 		foreach ($data as &$arr) {
 			$count = count($this->rs_columns->arr_rows);
 			for ( $n = 0; $n < $count; $n++ )
 			{
 				if ($arr[0] == $this->rs_columns->arr_rows[$n]['ColShortName'])
 				{
 					$colid = ++Chart::$columnID; // absolute data column counter (must match footnotes)
 					
 					debug('col names?', $this->rs_columns->arr_rows[$n]);
 					
 					$arr[0] = $this->rs_columns->arr_rows[$n]['ColLongName']. "<SUP><a href=\"#$colid\">[$colid]</a></SUP>";
 				}
 			}
 		}
 		
 		CssTable($data, 
 				array( 'Cell' => $this->look_and_feel->DataCellCSS,
 					'Row' => $this->look_and_feel->RowCSS,
 					'TH' => $this->look_and_feel->HeaderCellCSS
 				)
 		);
 	}
 	public function DisplayFootnotes()
 	{
 		// render footnotes
 		$sources_style = $this->look_and_feel->FootNotesWrapperCSS;
 		
 		//foreach ($this->rs_columns->arr_rows as $key => $value)
 		for ($i = 0; $i < count($this->rs_columns->arr_rows); $i++)
 		{
 			$id = ++Chart::$footnoteID;
 			$anchor = '<a ID="' .$id . '"></a>';
 			
 			if ($this->rs_columns->arr_rows[$i]['ColSourceHref'] == 'http://datasource.ext' )
 			{
 				$link = $this->rs_columns->arr_rows[$i]['ColSourceLabel'];
 			} else { 			
	 			$link = Linkify(
	 				$this->rs_columns->arr_rows[$i]['ColSourceHref'] . '" target="_blank'
	 				, $this->rs_columns->arr_rows[$i]['ColSourceLabel']
	 				);
	 		}
 			
 			$arr = array();
 			$arr[] = 
 			array($anchor . " [$id] ", 
 				$link
 				);
 			
 			WrapInCSS($arr, $sources_style, 'DIV');
 			debug('arr', $arr);
 			$output[] = $arr;
 			
 			/*echo "\t<div class=\"$sources_style\">\t\t\t\t";
 			printf($this->look_and_feel->PrintfAnchor, 
				trim($value['ColSourceHref']),
				$this->look_and_feel->AnchorCSS, 
				trim($value['ColSourceLabel']) 
				);
 			echo "\t</div>\n";
 			*/
		}
		array_walk_recursive($output, 'printf');
 	}
 	public function Populate()
 	{
 		$this->BuildQueries();
 		try
 		{
 			$this->rs_data->Populate();
 			//print_r($this->rs_data);
 		}
 		catch (Exception $e)
 		{
 			DebugException($e, 'cought exception in Chart->Populate');
 			throw new Exception('Population of data record set with SQL View: '. $this->view_name . ' failed');
 		}
 		
 		try
 		{
 			$this->rs_columns->Populate();
 			//print_r($this->rs_columns);
 		}
 		catch (Exception $e)
 		{
 			DebugException($e, 'cought exception in Chart->Populate');
 			throw new Exception('Population of columns record set with SQL View: '. $this->view_name . ' failed');
 		}
 	}
 	// *** Property and Member Accessors
 	public function SetLookAndFeel($LookAndFeel)
 	{
 		if (get_class($LookAndFeel) == 'ChartLookAndFeel') 
 		{
 			$this->look_and_feel = $LookAndFeel;
 			return true;
 		} 
 		else
 		{
 			return false;
 		}
 	}
 	public function GetStateAbbrev()
 	{
 		return $this->state_abbrev;
 	}
 	public function SetStateAbbrev($str)
 	{
 		if (is_string($str)) {
 			$this->state_abbrev = $str;
 			return true;
 		}
 		return false;
 	}
 	public function SetChartTitle($title)
 	{
 		$this->chart_title = trim($title);
 	}
 	public function GetChartTitle()
 	{
 		return $this->chart_title;
 	}
 	public function GetViewName()
 	{
 		return $this->view_name;
 	}
 	public function SetViewName($name)
 	{
 		if (!is_string($name))
 		{
 			throw new Exception("\nViewnName is not a string\n");
 		}
 		if (strstr(trim($name), ' '))
 		{
 			throw new Exception("\nViewnName is not one word! Cracker!\n");
 		}
 		$this->view_name = $name;
 	}
 	public function GetDataConnection()
 	{
 		return $this->db;
 	}
 	public function SetDataConnection(&$db)
 	{
 		$this->db = $db;
 		$this->GiveConnection();
 	}
 	// *** Constructor
 	public function __construct()
 	{
 		$this->rs_data = new RecordSet();
 		$this->rs_columns = new RecordSet();
 		
 	}
 	 	
 }
 
 // FUNCTIONS
?>
