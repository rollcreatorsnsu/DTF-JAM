spawn_rng = choose(0,1,2,3);
switch (spawn_rng) {
	case 0: {
		instance_create_depth(room_width, irandom(room_height), 0, choose(obj_Enemy_Boss));
		break;
	}
	case 1 : {
		instance_create_depth(irandom(room_width), 0, 0, choose(obj_Enemy_Boss));
		break;
	}
	case 2 : {
		instance_create_depth(0, irandom(room_height), 0, choose(obj_Enemy_Boss));
		break;
	}
	case 3 : {
		instance_create_depth(irandom(room_width), room_height, 0, choose(obj_Enemy_Boss));
		break;
	}
}
global.boss_begin = true