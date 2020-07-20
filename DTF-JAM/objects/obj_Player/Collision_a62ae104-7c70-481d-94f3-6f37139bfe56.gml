lives -= 1;
hurt = true
if (lives == 0) {
	instance_deactivate_object(obj_PlayerPhantom)
	is_dead = true
}