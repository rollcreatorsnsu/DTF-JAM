if (is_begin) {
	if (b < sprite_get_number(spr_boss_welcome)) {
		draw_sprite(spr_boss_welcome, b, x, y)
		b += 1 / sprite_get_speed(spr_boss_welcome)
	} else {
		is_begin = false
		draw_sprite(spr_boss_idle, image_index, x, y)
	}
} else {
	draw_sprite(spr_boss_idle, image_index, x, y)
}