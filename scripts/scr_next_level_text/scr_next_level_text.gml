///scr_next_level_text

//with (obj_engine) {
	if( obj_engine.level1_finished == false ){
		return "Level 01";
	} else if( obj_engine.level2_finished == false ){
		return "Level 02";
	} else if( obj_engine.level3_finished == false ){
		return "Level 03";
	}
//}

return "Complete";
