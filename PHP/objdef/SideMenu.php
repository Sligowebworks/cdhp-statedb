<?php
/*
 * Created on Nov 21, 20053:00:17 PM
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * project_name
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 * COPYRIGHT 2005
 * Sligo Computer Services Programmers' Co-op
 * `~,~`~,~`~,~`~,~`~,~`~,~`~,~`~,~
 */
class SideMenu 
{
	private $active_item = null;
	private $active_section = null;
	private $section_on_deck = null;
	private $active_state = null;
	
	private $rs_sections;
	private $rs_items;
	private $rs_items_on_deck;
	private $rs_state_select_list;
	private $db;
	private $lookNfeel;
	private $DataPageAbort;
	
	public function Ready()
	{
		if (!is_object($this->lookNfeel))
		{
			$this->lookNfeel = new MenuLookAndFeel();
		}
		
		$this->populate();
	}
	public function RenderSide()
	{
		echo "\t<div id=\"{$this->lookNfeel->IDMenuWrapperCSS}\">\n";
			if ($this->DataPageAbort) 
			{
				echo "\t</div>\n";
				return;
			}
			$this->DrawMenu();
		echo "\t</div>\n";
	}
	public function RenderTopBanner()
	{
		echo "\t\t<DIV id=\"{$this->lookNfeel->IDTopBannerWrapperCSS}\">\n";
		
			// temp:
			echo "\t\t\t<DIV id=\"{$this->lookNfeel->IDTopLogo}\">";
				echo '<a href="/">' .
				'<img src="/img/CDHP_small.jpg" height="140">' .
				'</a>';
			echo "\t\t\t</DIV>";
			// /temp
			?>
				<DIV id="<? echo $this->lookNfeel->IDBanner ?>">
					<p><SPAN class="<? echo $this->lookNfeel->BannerTitle1; ?>">SOS</SPAN><BR />
					<SPAN class="<? echo $this->lookNfeel->BannerTitle2; ?> ">State Oral Health Statistics</SPAN></p>
				</DIV>
			</DIV>
			<?
		
			echo "\t\t<DIV id=\"{$this->lookNfeel->IDTopMenuWrapCSS}\">\n";
			?>
				<DIV id="<? echo $this->lookNfeel->IDStateForm ?>">
					<form name="state" method="post" action="<?= SELF ?>">
					<select name="state" size="1" width="4">
					<?
						foreach ($this->rs_state_select_list->arr_rows as $key => $state)
						{	
							echo "\t\t\t\t<option " .
									(($this->active_state == $state['State'])? 'SELECTED' : '') .
									"/>{$state['State']}\n";
						}
					?>
					</select>
					<input type="submit" value="Show">
					</form>
				</DIV>
				<DIV id="<? echo $this->lookNfeel->IDTopLinks ?>">
					<a class="HorzDiv" href="/">About</a>
					<a class="HorzDiv" href="SelectState.php">Browse Statitstics</a>
					<a class="HorzDiv" href="FAQ.php">FAQ's</a>
				</DIV>
			</DIV>
			<?
	}
	private function DrawMenu()
	{
		foreach ($this->rs_sections->arr_rows as $key => $section)
		{
			if ($section['ID'] == $this->active_section)
			{
				echo "\t\t<div class=\"{$this->lookNfeel->ExpandedSectionCSS}\">{$section['Label']}</div>\n" ;
				$this->DrawMenuItems($this->rs_items);
				// echo "</div>\n";
			} 
			elseif ($section['ID'] == $this->section_on_deck)
			{
				echo "\t\t<div class=\"{$this->lookNfeel->ExpandedSectionCSS}\">{$section['Label']}</div>\n" ;
				$this->DrawMenuItems($this->rs_items_on_deck);
				// echo "</div>\n";
			}
			else 
			{
				echo "\t\t<div class=\"{$this->lookNfeel->SectionWrapperCSS}\">";
				printf($this->lookNfeel->PrintfAnchor,
					SELF . "?x=" . $section['ID'],
					$this->lookNfeel->SectionAnchorCSS,
					trim($section['Label'])
				);
				echo "</div>\n";
			}
			
		}
	}
	private function DrawMenuItems($rs)
	{
		foreach ($rs->arr_rows as $key => $item)
		{
			if ($item['ID'] == $this->active_item) 
			{
				echo "\t\t\t<div class=\"{$this->lookNfeel->SelectedItemCSS}\">" .
					$item['Label'];
			} 
			else 
			{
				echo "\t\t\t<div class=\"{$this->lookNfeel->ItemWrapperCSS}\">";
				printf('<a href="%s" class="%s">%s</a>',
					trim($item['PageName']) . '.php?'. "z={$item['ID']}",
					$this->lookNfeel->ItemAnchorCSS,
					$item['Label']
					);
			}
			echo "</div>\n";
		}
	}
	private function populate()
	{
		$this->rs_state_select_list = new RecordSet();
		
		$query = "SELECT State FROM StateAbbrev ORDER BY ID;";
		
		$this->rs_state_select_list->SetSQL($query);
		$this->rs_state_select_list->SetDataConnection($this->db);
		$this->rs_state_select_list->Populate();
		
		/***
		 * allways execute the above, conditionally the below
		 ***/

		if ($this->DataPageAbort) return;
		
		$this->rs_sections = new RecordSet();
		$this->rs_items = new RecordSet();
		$this->rs_items_on_deck = new RecordSet();
		
		$query = "SELECT * FROM glsMenuSections WHERE Active = 1 ORDER BY Sort, Label";
		
		$this->rs_sections->SetSQL($query);
		$this->rs_sections->SetDataConnection($this->db);
		$this->rs_sections->Populate();
		
		if (isset($this->active_section))
		{
			$query = "SELECT * FROM glsMenuItems WHERE MenuSectionKey = {$this->active_section} AND Active = 1 ORDER BY Sort, Label;";
			
			$this->rs_items->SetSQL($query);
			$this->rs_items->SetDataConnection($this->db);
			$this->rs_items->Populate();
		}
		if (isset($this->section_on_deck))
		{
			$query = "SELECT * FROM glsMenuItems WHERE MenuSectionKey = {$this->section_on_deck} AND Active = 1 ORDER BY Sort, Label;";
			
			$this->rs_items_on_deck->SetSQL($query);
			$this->rs_items_on_deck->SetDataConnection($this->db);
			$this->rs_items_on_deck->Populate();
		}
	}
	public function SetAppState ($arr)
	{
		if (!is_array($arr))
		{
			throw new Exception('invalid parameter passed to SideMenu->SetAppState');
		}
		
		foreach ($arr as $key => $value) 
		{
			switch ($key)
			{
			case 'z':
			//case 'MenuItemKey':
				$this->active_item = $value;
				break;
			case 'y':
			//case 'SectionKey':
				$this->active_section = $value;
				break;
			case 'x':
				$this->section_on_deck = $value;
				break;
			case 'state':
				$this->active_state = $value;
				break;
			case 'blnDataPage' :
				$this->DataPageAbort = ($value ==  false );
				break;
			}
		}
	}
	public function SetObjState($arr)
	{
		if (!is_array($arr))
		{
			throw new Exception('invalid parameter passed to SideMenu->SetAppState');
		}
		foreach ($arr as $key => $value) 
		{
			switch ($key)
			{
			case 'db':
				$this->SetConn($value);
				break;
			case 'look_and_feel':
				$this->SetLookAndFeel($value);
				break;
			}
		}
	}
	public function SetLookAndFeel($lNf)
	{
		if (is_object($lNf))
		{
			$this->lookNfeel = $lNf;
		} else {
			throw new Exception('Not An Object passed to SideMenu->SetLookAndFeel');
		}
	}
	public function SetConn(&$db) 
 	{
 		$this->db =& $db;
 	}
 	public function &GetConn() 
 	{
 		return $this->db;
 	}
}

?>

