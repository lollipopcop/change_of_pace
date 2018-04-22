/// @description Insert description here
// You can write your code in this editor

y -= .3;

if (y <= -100){
	obj_engine.scroll_seen = true;
	room_goto(rm_level1);
}