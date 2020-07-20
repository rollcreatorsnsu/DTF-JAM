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
			if (obj_Player.is_stopped == true) {
				break;
			}
			global.shot_dir = file_text_read_real(file);
			is_shoot = true
			shot_dir = global.shot_dir + 180
			file_text_readln(file)
			instance_create_depth(x, y, depth, obj_BulletPhantom);
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
if (left == true && obj_Player.is_stopped == false && place_empty(x - obj_Player.s, y, obj_solid)) {
	x -= obj_Player.s;
}
if (right == true && obj_Player.is_stopped == false && place_empty(x + obj_Player.s, y, obj_solid)) {
	x += obj_Player.s;
}
if (up == true && obj_Player.is_stopped == false && place_empty(x, y - obj_Player.s, obj_solid)) {
	y -= obj_Player.s;
}
if (down == true && obj_Player.is_stopped == false && place_empty(x, y + obj_Player.s, obj_solid)) {
	y += obj_Player.s;
}