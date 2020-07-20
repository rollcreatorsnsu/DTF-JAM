if (is_dead) return;
if (point_distance(x, y, obj_Player.x, obj_Player.y) > 100) {
	instance_create_depth(x, y, depth, obj_EnemyBullet);
	shoot = true
	shoot_index = 0
}
alarm_set(0, 100);