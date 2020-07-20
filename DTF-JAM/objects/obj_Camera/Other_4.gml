/// @description Camera


target = obj_Player;

cameraWidth = 960;
cameraHeight = 540;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);

displayScale = 2;

displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

surface_resize(application_surface, displayWidth, displayHeight);

display_set_gui_size(displayWidth, displayHeight)