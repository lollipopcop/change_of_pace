/// @description Insert description here
// You can write your code in this editor

var scale = 1;

if ( state = "mouse_exited" ) {
	scale = 1;	
} else if ( state = "mouse_entered" ){
	scale = 1.1	
}

draw_self();
draw_set_alpha(255);
draw_set_color(c_black);
draw_set_font(font_verdana);
draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_text_transformed(x, y, button_text, scale, scale, 0);
