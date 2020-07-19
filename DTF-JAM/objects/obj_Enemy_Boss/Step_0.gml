if (is_attack_1) {
	if (is_step) {
		if (x < 0) {
			is_right = true
		} else if (x > room_width) {
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