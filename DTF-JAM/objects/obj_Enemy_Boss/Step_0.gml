if (is_begin == true) {
	if (image_index >= image_number) {
		object_set_sprite(obj_Enemy_Boss, spr_boss_idle)
		is_begin = false
	}
}