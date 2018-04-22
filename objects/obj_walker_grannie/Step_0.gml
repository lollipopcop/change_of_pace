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

#region grannie AI

x += spd;

#endregion

#region dialog

if ( alarm[10] == -1 ) {
	alarm[10] = random_range(400, 600);	
}

#endregion

#region finish the race

if ( x >= room_width - 60 ){
	room_goto(rm_finish);	
}

#endregion