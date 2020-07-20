scale_factor = 4
draw_set_valign(fa_top)
draw_set_color(c_white)
draw_set_halign(fa_left)
for (i = 0; i < lives; i++) {
	draw_sprite_ext(ui_life, 0, i * sprite_get_width(ui_life) * scale_factor, 0, scale_factor, scale_factor, 0, c_white, 1)
}
time = global.cur_time
seconds = 60 - time / 1000
draw_set_halign(fa_center)
draw_text_transformed(display_get_width() / 2, 0, string(seconds), scale_factor, scale_factor, 0);
draw_set_halign(fa_right)
for (i = 0; i < 7 - global.repeats; i++) {
	draw_sprite_ext(ui_time_rec, 0, display_get_width() - i * sprite_get_width(ui_time_rec) * scale_factor, 0, scale_factor, scale_factor, 0, c_white, 1);
}
if (global.boss_begin == true) {
	draw_healthbar(display_get_width() / 2 - sprite_get_width(ui_hp_bar_boss) / 2, display_get_height() - sprite_get_height(ui_hp_bar_boss), display_get_width() / 2 + sprite_get_width(ui_hp_bar_boss) / 2, display_get_height(), global.boss_health, c_black, c_red, c_green, 0, true, true);
	draw_sprite_ext(ui_hp_bar_boss, 0, display_get_width() / 2, display_get_height(), 1, 1, 0, c_white, 255)
	draw_sprite(ui_hp_bar_boss_symbol, 0, display_get_width() / 2 - sprite_get_width(ui_hp_bar_boss) / 2, display_get_height())
}