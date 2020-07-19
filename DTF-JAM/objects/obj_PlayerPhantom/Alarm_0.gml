doing = ini_read_string("doings", current_doing, "");
switch (doing) {
	case "shot": {
		global.shot_defined = true
		global.shot_dir = ini_read_real("direction", current_doing, 0);
		instance_create_depth(x, y, depth, obj_Bullet);
		global.shot_defined = false;
		break;
	}
	default: {
		dir = ini_read_string("direction", current_doing, "");
		switch (dir) {
			case "left": {
				left = doing == "move"
				break;
			}
			case "right": {
				right = doing == "move"
				break;
			}
			case "up": {
				up = doing == "move"
				break;
			}
			case "down": {
				down = doing == "move"
				break;
			}
		}
	}
}
current_doing += 1;
b = ini_read_real("time", current_doing - 1, 0)
e = ini_read_real("time", current_doing, 0)
time = (e - b)
alarm_set(0, time > 0 ? time : 1);