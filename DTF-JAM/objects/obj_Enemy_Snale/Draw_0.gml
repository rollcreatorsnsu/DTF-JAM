scale_x = x > obj_Player.x ? -1 : 1;
if (is_dead == true) {
	if (dead_index < sprite_get_number(spr_snale_death)) {
		draw_sprite_ext(spr_snale_death, dead_index, x, y, scale_x, 1, 0, c_white, 255);
		dead_index += 1 / sprite_get_speed(spr_snale_death)
	} else {
		instance_destroy();
	}
} else {
	draw_sprite_ext(spr_snale, image_index, x, y, scale_x, 1, 0, c_white, 255);
}