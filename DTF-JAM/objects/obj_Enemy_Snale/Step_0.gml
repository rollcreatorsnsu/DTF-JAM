if (is_dead || point_distance(x, y, obj_Player.x, obj_Player.y) > 300) {
	move_towards_point(x, y, 0)
	return;
}
mp_potential_step(obj_Player.x, obj_Player.y, 1, false)