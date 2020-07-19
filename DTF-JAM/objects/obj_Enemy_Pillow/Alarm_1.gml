if (is_dead) return;
move_towards_point(obj_Player.x, obj_Player.y, 1);
alarm_set(1, 10000);