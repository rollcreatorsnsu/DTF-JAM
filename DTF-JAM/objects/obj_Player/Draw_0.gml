is_down = mouse_y > y
is_right = mouse_x > x
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
	dir = point_direction(mouse_x, mouse_y, x, y)
	if (is_shoot == false) {
		draw_sprite_ext(spr_arm_with_gun_idle, image_index, x, y, 1, (dir > 90 && dir < 270) ? -1 : 1, dir, c_white, 1);
	} else {
		draw_sprite_ext(spr_arm_with_gun_shot, image_index, x, y, 1, (dir > 90 && dir < 270) ? -1 : 1, dir, c_white, 1);
	}
} else {
	if (dead_cnt < sprite_get_number(spr_hero_front_die)) {
		draw_sprite_ext(spr_hero_front_die, dead_cnt, x, y, is_right ? -1 : 1, 1, 0, c_white, 255)
		dead_cnt += 1 / sprite_get_speed(spr_hero_front_die)
	} else {
		if (fade_cnt < 30 || (global.repeats == 6 && fade_cnt < 150)) {
			fade_cnt++;
			draw_set_color(global.repeats < 6 ? c_white : c_black)
			draw_set_alpha(fade_cnt / 30)
			draw_rectangle(0, 0, room_width, room_height, false);
			if (global.repeats == 6) {
				draw_set_color(c_white)
				draw_set_halign(fa_center)
				draw_set_valign(fa_middle)
				draw_text_transformed(display_get_width() / 2, display_get_height() / 2, "The end", 2, 2, 0)
			}
		} else {
			instance_destroy();
		}
	}	
}