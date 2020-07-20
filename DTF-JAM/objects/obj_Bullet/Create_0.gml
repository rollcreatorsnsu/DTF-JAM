audio_play_sound(sound_shoot, 100, false)
dir = point_direction(x, y, mouse_x, mouse_y)
motion_set(dir, 4);
image_angle = dir