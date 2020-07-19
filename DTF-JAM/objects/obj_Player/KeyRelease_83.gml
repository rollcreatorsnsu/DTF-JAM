ini_write_string("doings", current_doing, "stop");
ini_write_string("direction", current_doing, "down");
ini_write_real("time", current_doing, get_timer());
current_doing++