if (is_dead == false) {
	lives -= 1
	if (lives == 0) {
		instance_destroy(obj_Player)
	}
}
is_dead = true