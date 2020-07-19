draw_set_valign(fa_top)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_sprite(ui_life, 0, 0, 0);
draw_text(sprite_get_width(ui_life), 0, lives)
draw_sprite(ui_time_rec, 0, room_width / 2, 0);
time = global.cur_time
seconds = time / 1000
draw_text(sprite_get_width(ui_time_rec) + room_width / 2, 0, string(seconds));
draw_set_halign(fa_right)
draw_text(room_width, 0, global.repeats - 1);
if (global.boss_begin == true) {
	draw_healthbar(0, room_height - 20, room_width, room_height, global.boss_health, c_black, c_red, c_green, 0, true, true);
}