for (i = 1; i <= global.repeats; i++) {
	global.current_ini = i
	instance_create_depth(0, 0, 0, obj_PlayerPhantom);
}
global.repeats += 1
alarm_set(0, 100);