for (i = 1; i <= global.repeats; i++) {
	global.current_ini = i
	instance_create_depth(0, 0, 0, obj_PlayerPhantom);
}
global.repeats += 1
instance_create_depth(0, 0, 0, obj_Player);
alarm_set(0, 100);
global.begin_time = current_time
global.cur_time = 0