global.boss_health -= 1
if (global.boss_health == 0) {
	instance_destroy()	
}