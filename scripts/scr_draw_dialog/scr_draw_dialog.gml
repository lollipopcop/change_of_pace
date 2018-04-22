///scr_draw_dialog(dialog)

var dialog = argument0;

var letter_width = 5;

var bubble_width = sprite_get_width(spr_text_bubble_start);
var dialog_offset = 5;

var dialog_x =x + 10;
var dialog_y = y - 75;

var stretch = ( (string_length(dialog) * letter_width) - ((bubble_width - dialog_offset) * 2) ) / bubble_width ;


draw_set_alpha(255);
draw_sprite(spr_text_bubble_start, 0, dialog_x, dialog_y);
draw_sprite_ext(spr_text_bubble_middle, 0, dialog_x + bubble_width, dialog_y, stretch, 1, 0, c_white, 255);
draw_sprite(spr_text_bubble_end, 0, dialog_x + ( bubble_width + ( bubble_width * stretch ) ), dialog_y);
draw_set_color(c_black);
draw_set_font(font_dialog);
draw_text(dialog_x + dialog_offset, dialog_y + 9, dialog);