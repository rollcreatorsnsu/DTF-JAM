lives -= 1;
hurt = true
if (lives == 0) {
	instance_destroy(obj_PlayerPhantom)
	instance_deactivate_all(obj_Player)
	is_dead = true
}