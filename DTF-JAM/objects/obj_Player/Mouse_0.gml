if (can_shoot == true) {
	instance_create_depth(x, y, depth, obj_Bullet);
	dir = point_direction(x, y, mouse_x, mouse_y)
	file_text_write_string(file, "shot");
	file_text_write_real(file, dir);
	file_text_write_real(file, global.cur_time);
	can_shoot = false;
	alarm_set(0, 10);
}
is_shoot = true;