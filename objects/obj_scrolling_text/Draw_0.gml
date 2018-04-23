/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_verdana);
draw_set_halign(fa_center);

draw_set_color(c_white);
for( i = 0; i < array_length_1d(text_line); i++){
	draw_text(x, y + (20 * i), text_line[i]);	
}
