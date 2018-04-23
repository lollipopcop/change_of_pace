/// @description Insert description here
// You can write your code in this editor
event_inherited();
walking_sprite = spr_walker_grannie;
base_speed = 1;
spd = base_speed;

dialog_behind[0, 0] = "Could you help an old lady out?";
dialog_behind[0, 1] = false;
dialog_behind[1, 0] = "Would you like a date square.";
dialog_behind[1, 1] = false;
dialog_behind[2, 0] = "My, you're a fast fella.";
dialog_behind[2, 1] = false;


dialog_ahead[0, 0] = "My grandchild crawls faster than you walk.";
dialog_ahead[0, 1] = false;
dialog_ahead[1, 0] = "How does my dust taste?";
dialog_ahead[1, 1] = false;
dialog_ahead[2, 0] = "Your cat would be ashamed.";
dialog_ahead[2, 1] = false;