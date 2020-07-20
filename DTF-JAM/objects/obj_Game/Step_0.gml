global.cur_time = current_time - global.begin_time
if (global.cur_time > 60000) {
	global.cur_time = 60000
	obj_Player.is_dead = true
}