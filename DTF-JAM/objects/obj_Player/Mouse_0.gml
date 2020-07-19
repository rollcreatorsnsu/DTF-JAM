if (can_shoot == true) {
	instance_create_depth(x, y, depth, obj_Bullet);
	dir = point_direction(x, y, mouse_x, mouse_y)
	ini_write_string("doings", current_doing, "shot");
	ini_write_real("direction", current_doing, dir);
	ini_write_real("time", current_doing, get_timer());
	current_doing++;
	can_shoot = false;
	alarm_set(0, 10);
}
is_shoot = true;