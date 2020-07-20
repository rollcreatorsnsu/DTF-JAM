i = collision_rectangle(x - 5, y - 10, x + 5, y + 10, obj_Player, false, true)
if (i != noone) {
	lives -= 1;
	obj_Player.hurt = true
	if (lives == 0) {
		obj_Player.is_dead = true
		instance_destroy(obj_PlayerPhantom)
		instance_deactivate_all(obj_Player)
	}
	instance_destroy()
}
i = collision_rectangle(x - 20, y - 10, x + 20, y + 10, obj_solid, false, true)
if (i != noone) {
	instance_destroy()
}