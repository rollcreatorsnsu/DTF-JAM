if (is_dead == true) {
	if (dead_index < sprite_get_number(spr_enemy_pillow_death)) {
		draw_sprite(spr_enemy_pillow_death, dead_index, x, y);
		dead_index += 1 / sprite_get_speed(spr_enemy_pillow_death);
	} else {
		instance_destroy();
	}
} else {
	if (shoot == true) {
		if (shoot_index < sprite_get_number(spr_enemy_pillow_shoot)) {
			draw_sprite(spr_enemy_pillow_shoot, shoot_index, x, y);
			shoot_index += 1 / sprite_get_speed(spr_enemy_pillow_shoot);
		} else {
			draw_sprite(spr_enemy_pillow, image_index, x, y);
			shoot = false;
		}
	} else {
		draw_sprite(spr_enemy_pillow, image_index, x, y);
	}
}