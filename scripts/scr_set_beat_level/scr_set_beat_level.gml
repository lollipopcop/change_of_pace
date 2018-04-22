var current_room_name = room_get_name(room);

with(obj_engine){
	if( current_room_name == "rm_level1" && level1_finished == false){
		level1_finished = true;
	} else if ( current_room_name == "rm_level2" && level2_finished == false) {
		level2_finished = true;
	} else if ( current_room_name == "rm_level3" && level3_finished == false) {
		level3_finished = true;	
	}
}