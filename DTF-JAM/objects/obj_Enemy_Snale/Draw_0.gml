scale_x = x > obj_Player.x ? -1 : 1;
if (is_dead == true) {
	if (dead_index < sprite_get_number(spr_snale)) {
		draw_sprite_ext(spr_snale, dead_index, x, y, scale_x, 1, 0, c_white, 255);
		dead_index++
	} else {
		instance_destroy();
	}
} else {
	draw_sprite_ext(spr_snale, image_index, x, y, scale_x, 1, 0, c_white, 255);
}