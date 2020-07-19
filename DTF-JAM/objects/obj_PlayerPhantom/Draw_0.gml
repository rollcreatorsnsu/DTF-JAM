if (is_dead == false) {
	if (is_step == false) {
		if (is_down == true) {
			draw_sprite_ext(spr_hero_front_idle, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, 1);
			draw_sprite(spr_S_front_idle, image_index, x, y)
		} else {
			draw_sprite_ext(spr_hero_back, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, 1);
			draw_sprite(spr_S_back, image_index, x, y)
		}
	} else {
		if (is_down == true) {
			draw_sprite_ext(spr_hero_front_step, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, 1);
			draw_sprite(spr_S_front_step, image_index, x, y)
		} else {
			draw_sprite_ext(spr_hero_back_step, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, 1);
			draw_sprite(spr_S_back_step, image_index, x, y)
		}
	}
	if (is_shoot == false) {
		draw_sprite_ext(spr_arm_with_gun_idle, image_index, x, y, 1, (shot_dir > 90 && shot_dir < 270) ? -1 : 1, shot_dir, c_white, 1);
	} else {
		draw_sprite_ext(spr_arm_with_gun_shot, image_index, x, y, 1, (shot_dir > 90 && shot_dir < 270) ? -1 : 1, shot_dir, c_white, 1);
	}
} else {
	if (dead_cnt < sprite_get_number(spr_hero_front_die)) {
		draw_sprite(spr_hero_front_die, dead_cnt, x, y)
		dead_cnt += 1 / sprite_get_speed(spr_hero_front_die)
	} else {
		instance_destroy();
	}	
}