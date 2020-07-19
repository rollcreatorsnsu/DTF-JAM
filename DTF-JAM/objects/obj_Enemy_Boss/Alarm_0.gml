for (i = 0; i < 12; i++) {
	instance_create_depth(x + irandom_range(-sprite_get_width(spr_boss_idle), sprite_get_width(spr_boss_idle)), y + irandom_range(-sprite_get_height(spr_boss_idle), sprite_get_height(spr_boss_idle)), depth, obj_EnemyBullet)
}
alarm_set(0, 100)