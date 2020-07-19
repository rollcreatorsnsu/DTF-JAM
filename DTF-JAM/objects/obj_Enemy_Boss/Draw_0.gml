if (!is_dead) {
	if (is_begin) {
		if (b < sprite_get_number(spr_boss_welcome)) {
			draw_sprite(spr_boss_welcome, b, x, y)
			b += 1 / sprite_get_speed(spr_boss_welcome)
		} else {
			is_begin = false
			draw_sprite(spr_boss_idle, image_index, x, y)
		}
	} else if (is_attack_2) {
		draw_sprite(spr_boss_attack_2, attack_2_count, x, y)
		attack_2_count += 1 / sprite_get_speed(spr_boss_attack_2)
		if (attack_2_count > sprite_get_number(spr_boss_attack_2)) {
			attack_2_count -= sprite_get_number(spr_boss_attack_2)
		}
	} else {
		draw_sprite(spr_boss_idle, image_index, x, y)
	}
} else {
	if (dead_count < sprite_get_number(spr_boss_death)) {
		draw_sprite(spr_boss_idle, dead_count, x, y);
		dead_count += 1 / sprite_get_speed(spr_boss_death)
	} else {
		instance_destroy()
	}
}