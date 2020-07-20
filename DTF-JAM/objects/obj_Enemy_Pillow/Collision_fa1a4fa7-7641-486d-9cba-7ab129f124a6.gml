if (is_dead == true) return;
hp -= 10;
if (hp == 0) {
	is_dead = true;	
	audio_play_sound(sound_death_enemy, 100, false)
	dead_index = 0;
}