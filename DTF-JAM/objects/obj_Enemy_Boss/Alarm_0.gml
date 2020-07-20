audio_stop_sound(sound_boss_attach_2)
if (irandom_range(1, 2) == 1) {
	is_attack_1 = true
	attack_1_count = 0
	alarm_set(0, 500)
} else {
	audio_play_sound(sound_boss_attach_2, 100, true);
	is_attack_1 = false
	is_attack_2 = true
	attack_2_count = 0
	portal_count = 0
}