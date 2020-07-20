if (is_dead || point_distance(x, y, obj_Player.x, obj_Player.y) <= 100) {
	move_towards_point(x, y, 0)
	return
}
move_towards_point(obj_Player.x, obj_Player.y, 1)