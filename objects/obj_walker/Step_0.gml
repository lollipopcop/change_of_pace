/// @description Insert description here
// You can write your code in this editor

var y_move = 0;

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
	spd = .8;	
	
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

#region movement with top and bottom limit

y_move = y_move * spd;

#region keep player in bounds
//if the character is going to move above or below the bounds; stop
if ( (y + y_move) < y_min ){
	y_move = y - y_min;
} else if ((y + y_move) > y_max) {
	y_move = y_max - y;	
}

//if the character is going to move too far forward they become winded
if( (x + spd) > ((obj_camera.x + 240) - (sprite_width/2))){
	state = "winded";
	alarm[0] = 60;
}

//if the player's stamina is 0 change state to winded
if (stamina <= 0){
	state = "winded";
	alarm[0] = 60;
}

#endregion

y = y + y_move;

x = x + spd;

#endregion

#region boost randomly

if ( alarm[0] == -1 && alarm[1] == -1 && alarm[2] == -1) {
	
	alarm[2] = random_range(100, 200);
}

#endregion

#region finish the race

if ( x >= room_width - 60 ){
	room_goto(rm_lose);	
}

#endregion