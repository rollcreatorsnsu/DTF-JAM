draw_set_valign(fa_top)
draw_set_color(c_white)
draw_set_halign(fa_left)
for (i = 0; i < lives; i++) {
	draw_sprite(ui_life, 0, i * sprite_get_width(ui_life), 0)
}
time = global.cur_time
seconds = time / 1000
draw_set_halign(fa_center)
draw_text(room_width / 2, 0, string(seconds));
draw_set_halign(fa_right)
for (i = 0; i < global.repeats; i++) {
	draw_sprite(ui_time_rec, 0, room_width - i * sprite_get_width(ui_time_rec), 0);
}
if (global.boss_begin == true) {
	draw_healthbar(0, room_height - 20, room_width, room_height, global.boss_health, c_black, c_red, c_green, 0, true, true);
}