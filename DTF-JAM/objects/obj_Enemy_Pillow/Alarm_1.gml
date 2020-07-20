if (is_dead) return;
if (point_distance(x, y, obj_Player.x, obj_Player.y) <= 500) {
	mp_potential_step(obj_Player.x, obj_Player.y, 25, false)
}
alarm_set(1, 1000);