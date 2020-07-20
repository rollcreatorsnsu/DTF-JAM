is_right = x < obj_Player.x
if (is_dead == true) {
	if (dead_index < sprite_get_number(spr_enemy_pillow_death)) {
		draw_sprite_ext(spr_enemy_pillow_death, dead_index, x, y, is_right ? 1 : -1, 1, 0, c_white, 1);
		dead_index += 1 / sprite_get_speed(spr_enemy_pillow_death);
	} else {
		instance_destroy();
	}
} else {
	if (shoot == true) {
		if (shoot_index < sprite_get_number(spr_enemy_pillow_shoot)) {
			draw_sprite_ext(spr_enemy_pillow_shoot, shoot_index, x, y, is_right ? 1 : -1, 1, 0, c_white, 1);
			shoot_index += 1 / sprite_get_speed(spr_enemy_pillow_shoot);
		} else {
			draw_sprite_ext(spr_enemy_pillow, image_index, x, y, is_right ? 1 : -1, 1, 0, c_white, 1);
			shoot = false;
		}
	} else {
		draw_sprite_ext(spr_enemy_pillow, image_index, x, y, is_right ? 1 : -1, 1, 0, c_white, 1);
	}
}