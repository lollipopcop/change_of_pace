/// @description Insert description here
// You can write your code in this editor

if ( state == "alive" ) {
	
	other.alarm[4] = 120;
	other.state = "tripped";


	sprite_index = spr_obstacle_bike_rider_hit;
	alarm[0] = 20;

	state = "dead";
}