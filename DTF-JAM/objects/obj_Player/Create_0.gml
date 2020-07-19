lives = 5
global.shot_defined = false
ini_open(global.repeats)
can_shoot = true;
is_down = true;
is_right = false;
ini_write_real("time", 0, get_timer())
current_doing = 1;