if (is_dead == true) return;
while (time <= global.cur_time && !file_text_eof(file)) {
	doing = file_text_read_string(file);
	file_text_readln(file)
	switch (doing) {
		case "dead": {
			is_dead = true;
			return;
		}
		case "shot": {
			global.shot_defined = true
			global.shot_dir = file_text_read_real(file);
			is_shoot = true
			shot_dir = global.shot_dir + 180
			file_text_readln(file)
			instance_create_depth(x, y, depth, obj_Bullet);
			global.shot_defined = false;
			break;
		}
		default: {
			is_shoot = false
			dir = file_text_read_string(file);
			file_text_readln(file)
			is_step = doing == "move"
			switch (dir) {
				case "left": {
					left = is_step
					is_right = false
					break;
				}
				case "right": {
					right = is_step
					is_right = true
					break;
				}
				case "up": {
					up = is_step
					is_down = false
					break;
				}
				case "down": {
					down = is_step
					is_down = true
					break;
				}
			}
		}
	}
	time = file_text_read_real(file)
	file_text_readln(file)
}
if (left == true) {
	x -= obj_Player.s;
}
if (right == true) {
	x += obj_Player.s;
}
if (up == true) {
	y -= obj_Player.s;
}
if (down == true) {
	y += obj_Player.s;
}