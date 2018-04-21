/// @description Insert description here
// You can write your code in this editor

//set up initial speed

//how fast the character moves (or the room moves against the player)
spd = .8;

//lowest point
y_min = 200;
//highest point
y_max = 264;

//inital state
state = "walking";
stamina = 100;

debug = false;

//setup sprites to use
walking_sprite = -1;
winded_sprite = -1;