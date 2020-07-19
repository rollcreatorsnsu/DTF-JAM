while (time <= global.cur_time && !file_text_eof(file)) {
	doing = file_text_read_string(file);
	file_text_readln(file)
	switch (doing) {
		case "shot": {
			global.shot_defined = true
			global.shot_dir = file_text_read_real(file);
			file_text_readln(file)
			instance_create_depth(x, y, depth, obj_Bullet);
			global.shot_defined = false;
			break;
		}
		default: {
			dir = file_text_read_string(file);
			file_text_readln(file)
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
	time = file_text_read_real(file)
	file_text_readln(file)
}
if (left == true) {
	x -= 1;
}
if (right == true) {
	x += 1;
}
if (up == true) {
	y -= 1;
}
if (down == true) {
	y += 1;
}