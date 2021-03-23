<?php 
define('LANG',$language);
class Themes {
	
	
			function subcategories($parent_id){
		
		global $DBPrefix, $db, $system;
		
		include(MAIN_PATH.'/language/'.LANG.'/categories.inc.php');
		
		
		
		if ($system->SETTINGS['catsorting'] == 'alpha'){
	               
	               $catsorting = ' ORDER BY cat_name ASC';
                
                }else{
	               $catsorting = ' ORDER BY sub_counter DESC';
              }
	
		$query = "SELECT * FROM " . $DBPrefix . "categories WHERE parent_id=".$parent_id."  ".$catsorting ."  ";
		 $db->query($query);
		
		$array = array();
		while ($row = $db->fetch())
		{
			$array[] = $row;
		}
		return $array;
		
		
	}

	
	function categories() {
		global $DBPrefix, $db, $system, $LANGUAGES;
		
		   if ($system->SETTINGS['catsorting'] == 'alpha'){
	               
	               $catsorting = ' ORDER BY cat_name ASC';
                
                }else{
	               $catsorting = ' ORDER BY sub_counter DESC';
              }
              $limit_catego=$system->SETTINGS['catstoshow'];
              $limit="LIMIT 0, ".$limit_catego." ";
              
		$query = "SELECT * FROM " . $DBPrefix . "categories WHERE level=0  ".$catsorting ." ".$limit." ";
		$db->query($query);
		
		
		include(MAIN_PATH.'/language/'.LANG.'/categories.inc.php');
		
		  
		$array = array();
		while ($row = $db->fetch())
		{
			$array[] = $row;
		}
		return $array;
		
   	
	}
	
	
    function cat_left(){
 	global $DBPrefix, $db, $system, $LANGUAGES;
 	   $category=$this->categories();
    include(MAIN_PATH.'/language/'.LANG.'/categories.inc.php');
           foreach ($category AS $cat){
	
       
	      $subcat=$this->subcategories($cat['cat_id']);
          $out.='<li><a href="' . $system->SETTINGS['siteurl'] . 'browse.php?id=' . $cat['cat_id'] . '">'.$category_names[$cat['cat_id']].'</a>';
         $out.='<ul>';
         foreach ($subcat AS $sub){
      	    if($sub['cat_name']){
				$out.='<li><a href="' . $system->SETTINGS['siteurl'] . 'browse.php?id=' . $sub['cat_id'] . '">'.$category_names[$sub['cat_id']].'</a></li>';
		    }
      
	    
	      }
         $out.='</ul>';
    
         $out.='</li>';
    
        }
    
      return $out;
    }

	
   function menu_active($page){
	
	if(stristr($_SERVER['PHP_SELF'],$page)) {
		$out='class="active"';
		return $out;
	}
	
}
	
	

}

?>