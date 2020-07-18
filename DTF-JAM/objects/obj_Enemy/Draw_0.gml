if (shoot == true) {
	if (shoot_index < sprite_get_number(spr_enemy_pillow_shoot)) {
		draw_sprite(spr_enemy_pillow_shoot, shoot_index, x, y);
		shoot_index += 1;
	} else {
		draw_sprite(spr_enemy_pillow, image_index, x, y);
		shoot = false;
	}
} else {
	draw_sprite(spr_enemy_pillow, image_index, x, y);
}