if (can_shoot == true) {
	instance_create_depth(x, y, depth, obj_Bullet);
	can_shoot = false;
	alarm_set(0, 10);
}