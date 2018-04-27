/// @description goto replay_room

if(replay_enabled){
		room_goto(prev_room);
}

/*

keep room controller persistent
have it destroyed once it has set the prev_room in the current rooms controller

*/