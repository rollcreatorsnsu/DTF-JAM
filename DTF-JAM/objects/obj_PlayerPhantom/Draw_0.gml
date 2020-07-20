is_down = mouse_y > y
is_right = mouse_x > x
image_alpha = 0.7
if (is_dead == false) {
	if (is_step == false) {
		if (is_down == true) {
			draw_sprite_ext(spr_hero_front_idle, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, image_alpha);
			draw_sprite_ext(spr_S_front_idle, image_index, x, y, 1, 1, 0, c_white, image_alpha)
		} else {
			draw_sprite_ext(spr_hero_back, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, image_alpha);
			draw_sprite_ext(spr_S_back, image_index, x, y, 1, 1, 0, c_white, image_alpha)
		}
	} else {
		if (is_down == true) {
			draw_sprite_ext(spr_hero_front_step, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, image_alpha);
			draw_sprite_ext(spr_S_front_step, image_index, x, y, 1, 1, 0, c_white, image_alpha)
		} else {
			draw_sprite_ext(spr_hero_back_step, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, image_alpha);
			draw_sprite_ext(spr_S_back_step, image_index, x, y, 1, 1, 0, c_white, image_alpha)
		}
	}
	if (is_shoot == false) {
		draw_sprite_ext(spr_arm_with_gun_idle, image_index, x, y, 1, (shot_dir > 90 && shot_dir < 270) ? -1 : 1, shot_dir, c_white, image_alpha);
	} else {
		draw_sprite_ext(spr_arm_with_gun_shot, image_index, x, y, 1, (shot_dir > 90 && shot_dir < 270) ? -1 : 1, shot_dir, c_white, image_alpha);
	}
} else {
	if (dead_cnt < sprite_get_number(spr_hero_front_die)) {
		draw_sprite_ext(spr_hero_front_die, dead_cnt, x, y, is_right ? -1 : 1, 1, 0, c_white, image_alpha)
		dead_cnt += 1 / sprite_get_speed(spr_hero_front_die)
	} else {
		instance_destroy();
	}	
}