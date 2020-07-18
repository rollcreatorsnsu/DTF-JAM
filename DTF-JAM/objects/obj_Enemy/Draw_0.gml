if (shoot == true) {
	if (image_index <= image_number - 1) {
		draw_sprite(spr_enemy_pillow_shoot, image_index, x, y);
	} else {
		draw_sprite(spr_enemy_pillow, image_index, x, y);
		shoot = false;
	}
} else {
	draw_sprite(spr_enemy_pillow, image_index, x, y);
}