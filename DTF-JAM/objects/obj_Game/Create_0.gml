audio_stop_all()
audio_play_sound(sound_game, 50, true);
for (i = 1; i <= global.repeats; i++) {
	global.current_ini = i
	instance_create_depth(x, y, 0, obj_PlayerPhantom);
}
global.repeats += 1
instance_create_depth(x, y, 0, obj_Player);
global.begin_time = current_time
global.cur_time = 0
global.boss_begin = false
global.boss_health = 0