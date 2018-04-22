/// @description Insert description here
// You can write your code in this editor

#region check state and change speed

//change speed based on current state
if ( state == "winded" ) {
	sprite_index = winded_sprite;
	spd = 0;	

	stamina += .75;
	if (stamina >= 100) {
		stamina = 100;	
	}
}

if ( state == "walking" ) {
	sprite_index = walking_sprite;
	spd = base_speed;	
	
	stamina += .25;
	if ( stamina >= 100 ) {
		stamina = 100;	
	}
}

if ( state == "walking_faster" ) {
	sprite_index = walking_sprite;
	image_speed = 1.5
	spd = 1.5;
	stamina -= .5;
	if( stamina < 0 ){
		stamina = 0;
	}
}

#endregion

x = x + spd;

#region boost only if the player is ahead of you.

if (state != "winded"){
	if ( obj_player.x > x + 30 ){
		state = "walking_faster";	
	} else if ( obj_player.x < x - 30){
		state = "walking";		
	}
}

if ( alarm[3] == -1 ) {
	alarm[3] = random_range(300, 500);	
}

#endregion

#region finish the race

if ( x >= room_width - 60 ){
	room_goto(rm_finish);	
}

#endregion/// @description Insert description here
// You can write your code in this editor
