/// @description draw bar

x = 20;
y = 20;

draw_sprite(spr_stamina_background, 0, x, y);
draw_sprite_ext(spr_stamina_bar, 0, x, y, (obj_player.stamina/100), 1, 0, c_white, 255);
draw_sprite(spr_stamina_border, 0, x, y);

