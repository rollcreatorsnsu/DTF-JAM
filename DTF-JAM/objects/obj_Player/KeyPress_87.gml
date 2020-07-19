ini_write_string("doings", current_doing, "move");
ini_write_string("direction", current_doing, "up");
ini_write_real("time", current_doing, get_timer());
current_doing++