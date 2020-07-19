instance_destroy(obj_PlayerPhantom)
file_text_close(file)
if (global.boss_health > 0) {
	show_message("You lose!")
	room_restart()
} else {
	show_message("You win!")
	room_goto_previous()
}
