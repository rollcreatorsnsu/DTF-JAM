if (is_dead == true) return;
lives -= 1;
obj_Player.hurt = true
if (lives == 0) {
	obj_Player.is_dead = true
}
is_dead = true