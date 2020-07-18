doing = ini_read_string("doings", current_doing, "");
switch (doing) {
	case "shot": {
		global.shot_defined = true
		global.shot_dir = ini_read_real("direction", current_doing, "");
		instance_create_depth(x, y, depth, obj_Bullet);
		global.shot_defined = false;
	}
	default: {
		dir = ini_read_string("direction", current_doing, "");
		switch (dir) {
			case "left": {
				left = doing == "move"
			}
			case "right": {
				right = doing == "move"
			}
			case "up": {
				up = doing == "move"
			}
			case "down": {
				down = doing == "move"
			}
		}
	}
}
current_doing += 1;
alarm_set(0, ini_read_real("time", current_doing, "") - ini_read_real("time", current_doing - 1, ""));