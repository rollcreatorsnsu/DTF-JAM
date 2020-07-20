if (is_dead == true || is_begin == true) return;
global.boss_health -= 1
if (global.boss_health == 0) {
	audio_stop_sound(sound_boss_attach_2)
	audio_play_sound(sound_death_boss, 100, false)
	is_dead = true	
}