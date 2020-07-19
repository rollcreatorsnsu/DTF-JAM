dir = global.shot_defined ? global.shot_dir : point_direction(x, y, mouse_x, mouse_y)
motion_set(dir, 0.5);
image_angle = dir