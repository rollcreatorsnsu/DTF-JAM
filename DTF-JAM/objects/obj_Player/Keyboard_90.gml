if (can_shoot == true) {
	instance_create_depth(x, y, depth - 1, obj_Bullet);
	can_shoot = false;
	alarm_set(0, 10);
}
is_shoot = true;