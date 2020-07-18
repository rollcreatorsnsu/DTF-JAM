image_speed = 1;
if (is_step == false) {
	if (is_down == true) {
		draw_sprite(spr_hero_front_idle, image_index, x, y);
	} else {
		draw_sprite(spr_hero_back, image_index, x, y);	
	}
} else {
	if (is_down == true) {
		draw_sprite(spr_hero_front_step, image_index, x, y);	
	} else {
		draw_sprite(spr_hero_back_step, image_index, x, y);
	}
}
if (is_shoot == false) {
	draw_sprite_ext(spr_arm_with_gun_idle, 0, x, y, 1, 1, point_direction(mouse_x, mouse_y, x, y), c_white, 1);
} else {
	draw_sprite_ext(spr_arm_with_gun_shot, 0, x, y, 1, 1, point_direction(mouse_x, mouse_y, x, y), c_white, 1);
}