if (is_begin) {
	if (is_step && distance_to_point(room_width / 2, 130) == 0) {
		move_towards_point(room_width / 2, 130, 0)
		is_step = false
	}
}
if (is_attack_1) {
	if (is_step) {
		if (place_empty(x - 100, y, obj_solid)) {
			is_right = true
		} else if (place_empty(x + 100, y, obj_solid)) {
			is_right = false
		}
		if (is_right) {
			motion_set(0, 2)
		} else {
			motion_set(180, 2)
		}
	} else {
		motion_set(0, 0)
	}
}