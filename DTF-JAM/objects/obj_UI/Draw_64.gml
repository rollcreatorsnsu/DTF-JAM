draw_set_halign(fa_left)
draw_text(0, 0, lives)
draw_set_halign(fa_center)
time = global.cur_time
seconds = time / 1000
draw_text(room_width / 2, 0, string(seconds));
draw_set_halign(fa_right)
draw_text(room_width, 0, global.repeats - 1);