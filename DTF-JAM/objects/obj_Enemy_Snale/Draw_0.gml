if (is_dead == true) {
	if (dead_index < sprite_get_number(spr_snale_death)) {
		draw_sprite(spr_snale_death, dead_index, x, y);
		dead_index++
	} else {
		instance_destroy();
	}
} else {
	draw_sprite(spr_snale_death, 0, x, y);
}