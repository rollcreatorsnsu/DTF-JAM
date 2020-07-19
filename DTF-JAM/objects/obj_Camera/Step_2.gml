if (room == room_Game) {
	half_view_height = camera_get_view_height(view_camera[0]) / 2
	if (target.y < half_view_height ||
		target.y > room_height - half_view_height) return;
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), target.y - half_view_height)
}