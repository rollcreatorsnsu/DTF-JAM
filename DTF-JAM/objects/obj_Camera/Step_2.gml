if (room == room_Game) {

	half_view_width = camera_get_view_width(view_camera[0]) / 2
	half_view_height = camera_get_view_height(view_camera[0]) / 2

	camera_set_view_pos(view_camera[0], target.x - half_view_width, target.y - half_view_height)
}