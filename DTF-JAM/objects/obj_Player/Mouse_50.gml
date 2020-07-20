if (is_dead == true) return;
if (can_shoot == true) {
	dist_x = mouse_x - x
	dist_y = mouse_y - y
	dist = point_distance(x, y, mouse_x, mouse_y)
	instance_create_depth(x + dist_x / dist * 15, y + dist_y / dist * 15, depth, obj_Bullet);
	dir = point_direction(x, y, mouse_x, mouse_y)
	file_text_write_real(file, global.cur_time);
	file_text_writeln(file);
	file_text_write_string(file, "shot");
	file_text_writeln(file);
	file_text_write_real(file, dir);
	file_text_writeln(file);
	can_shoot = false;
	alarm_set(0, 10);
}
is_shoot = true;