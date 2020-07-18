image_speed = 1;
if (is_step == false) {
	draw_sprite(spr_hero_front_idle, image_index, x, y);
} else {
	draw_sprite(spr_hero_front_step, image_index, x, y);	
}
draw_sprite_ext(spr_arm_with_gun, 0, x, y, 1, 1, point_direction(mouse_x, mouse_y, x, y), c_white, 1);