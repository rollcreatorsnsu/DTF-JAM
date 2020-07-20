lives -= 1;
hurt = true
if (lives == 0) {
	instance_destroy(obj_PlayerPhantom)
	is_dead = true
}