/// @description Insert description here
// You can write your code in this editor

next_room = -1;
current_room = room;
prev_room = -1;
time_to_live = -1;
space_enabled = false;
replay_enabled = false;

//if there was a previous room find out what it was and set that to prev_room
var old_room_controller = scr_find_new_room_controller(obj_room_controller, id);

if (old_room_controller != noone){
	prev_room = old_room_controller.current_room;
	instance_destroy(old_room_controller);
}
