/// @description Insert description here
// You can write your code in this editor

//set up initial speed

//how fast the character moves (or the room moves against the player)
spd = .8;

//lowest point
y_min = 222;
//highest point
y_max = 264;

//inital state
state = "walking";
stamina = 100;

debug = false;

//setup sprites to use
walking_sprite = -1;
winded_sprite = -1;

dialog_state = "quiet";
dialog_chosen = false;
dialog = "";

dialog_ahead[0, 0] = "unintialized";
dialog_ahead[0, 1] = false;
dialog_behind[0, 0] = "uninitialized";
dialog_ahead[0, 1] = false;