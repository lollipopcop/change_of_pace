/// @description Insert description here
// You can write your code in this editor

#region //check inputs

//determine if we are moving in the y plane
var y_move = 0;

//check to see if we should move up
if(keyboard_check(ord("W")) || keyboard_check(vk_up)){
	y_move = -1;	
}

//check to see if we should move down
if(keyboard_check(ord("S")) || keyboard_check(vk_down)){
	y_move = 1;	
}

if(keyboard_check(vk_space)){
	state = "walking_faster";
} else {
	state = "walking";	
}

#endregion

#region //check state and change speed

//change speed based on current state
if ( state == "winded" ) {
	spd = 0;	
}

if ( state == "walking" ) {
	spd = .8;	
}

if ( state == "walking_faster" ) {
	spd = 1.5;	
}

#endregion

#region //movement

//do the movement

y_move = y_move * spd;

//if the character is going to move above or below the bounds; stop
if ( (y + y_move) < y_min ){
	y_move = y - y_min;
} else if ((y + y_move) > y_max) {
	y_move = y_max - y;	
}

y = y + y_move;

x = x + spd;

#endregion
