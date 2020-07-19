if (is_step == false) {
	if (is_down == true) {
		draw_sprite_ext(spr_hero_front_idle, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, 1);
	} else {
		draw_sprite_ext(spr_hero_back, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, 1);	
	}
} else {
	if (is_down == true) {
		draw_sprite_ext(spr_hero_front_step, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, 1);
	} else {
		draw_sprite_ext(spr_hero_back_step, image_index, x, y, is_right ? -1 : 1, 1, 0, c_white, 1);
	}
}
if (is_shoot == false) {
	draw_sprite_ext(spr_arm_with_gun_idle, image_index, x, y, 1, (shot_dir > 90 && shot_dir < 270) ? -1 : 1, shot_dir, c_white, 1);
} else {
	draw_sprite_ext(spr_arm_with_gun_shot, image_index, x, y, 1, (shot_dir > 90 && shot_dir < 270) ? -1 : 1, shot_dir, c_white, 1);
}