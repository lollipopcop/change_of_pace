/// @description draw bar

x = 20;
y = 20;

var alpha = 255;

if ( obj_player.stamina >= 75 ){
	alpha = (100 - obj_player.stamina) * 10;
} else {
	alpha = 255;	
}

draw_set_alpha(alpha);

draw_sprite(spr_stamina_background, 0, x, y);
draw_sprite_ext(spr_stamina_bar, 0, x, y, (obj_player.stamina/100), 1, 0, c_white, alpha);
draw_sprite(spr_stamina_border, 0, x, y);

draw_set_alpha(255);
