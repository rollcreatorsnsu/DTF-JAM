i = collision_rectangle(x - 5, y - 10, x + 5, y + 10, obj_Player, false, true)
if (i != noone) {
	lives -= 1;
	if (lives == 0) {
		obj_Player.is_dead = true
	}
	instance_destroy()
}