is_step = false;
is_shoot = false;
if (hurt == true && is_dead == false) {
	audio_play_sound(sound_hit, 100, false)
	visible = false
	alarm_set(1, 10)
	hurt = false
}