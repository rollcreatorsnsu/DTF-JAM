file_text_write_string(file, "dead");
instance_destroy(obj_PlayerPhantom)
file_text_close(file)
if (global.boss_health > 0) {
	room_restart()
} else {
	show_message("You win!")
	room_goto_previous()
}
