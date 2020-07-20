if (is_dead == true) return;
lives -= 1;
obj_Player.hurt = true
if (lives == 0) {
	obj_Player.is_dead = true
	instance_destroy(obj_PlayerPhantom)
}
is_dead = true
audio_play_sound(sound_death_enemy, 100, false)