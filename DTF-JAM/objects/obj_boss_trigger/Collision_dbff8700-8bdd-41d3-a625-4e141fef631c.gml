if (global.boss_begin == true) return;
instance_create_depth(room_width / 2, 0, depth, obj_Enemy_Boss);
global.boss_begin = true