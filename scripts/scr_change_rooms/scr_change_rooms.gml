///scr_change_rooms()

var next_level = -1;

if (obj_engine.scroll_seen == false ) {
	next_level = rm_level_intro;
} else if(obj_engine.level1_finished = false){
	next_level = rm_level1;	
} else if( obj_engine.level2_finished = false){
	next_level = rm_level2;
} else {
	next_level = rm_level3;	
}

room_goto(next_level);