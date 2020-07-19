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
		draw_sprite(spr_boss_portal_numeral, portal_count, x, y + 60)
		if (portal_count < sprite_get_number(spr_boss_portal_numeral)) {
			portal_count += 1 / sprite_get_speed(spr_boss_portal_numeral)
		} else {
			is_attack_2 = false;
			alarm_set(0, 100);
		}
	} else if (is_attack_1) {
		if (is_step) {
			draw_sprite_ext(spr_boss_run, step_count, x, y, is_right ? 1 : -1, 1, 0, c_white, 255)
			step_count += 1 / sprite_get_speed(spr_boss_run)
			if (step_count > sprite_get_number(spr_boss_run)) {
				step_count = 0
				is_step = choose(true, false)
			}
		} else {
			draw_sprite_ext(spr_boss_attack_right, attack_1_count, x, y, is_right ? 1 : -1, 1, 0, c_white, 255)
			if (attack_1_count < 7) {
				draw_sprite(spr_boss_appear_time, attack_1_count, x + 69, y - 21)
			} else if (attack_1_count < 8) {
				draw_text(x + 64, y + 15, global.cur_time / 1000)
			} else if (attack_1_count < 9) {
				draw_text(x + 48, y + 44, global.cur_time / 1000)
			} else if (attack_1_count < 10) {
				if (bullet == false) {
					instance_create_depth(x + 48, y + 44, depth, obj_BossBullet)
					bullet = true
				}
			} else {
				attack_1_count = 0
				is_step = choose(true, false)
				bullet = false
			}
			attack_1_count += 1 / sprite_get_speed(spr_boss_run);
		}
	} else {
		draw_sprite(spr_boss_idle, image_index, x, y)
	}
} else {
	if (dead_count < sprite_get_number(spr_boss_death)) {
		draw_sprite(spr_boss_idle, dead_count, x, y);
		draw_sprite(spr_burst_death, dead_count * 1.25, x, y)
		dead_count += 1 / sprite_get_speed(spr_boss_death)
	} else {
		instance_destroy()
	}
}