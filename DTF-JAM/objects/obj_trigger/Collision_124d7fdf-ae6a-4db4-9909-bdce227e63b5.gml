if (global.boss_begin == true) return;
instance_create_depth(428, -sprite_get_height(spr_boss_idle) / 2, depth, obj_Enemy_Boss);
global.boss_begin = true