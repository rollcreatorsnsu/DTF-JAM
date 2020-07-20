global.cur_time = current_time - global.begin_time
if (global.cur_time > 60000) {
	instance_destroy(obj_Player)
}