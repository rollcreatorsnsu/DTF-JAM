global.cur_time = current_time - global.begin_time
if (global.cur_time > 60000) {
	instance_destroy(obj_Player)
}
if (global.cur_time > 30000 && global.boss_begin == false) {
	alarm_set(1, 1)
}