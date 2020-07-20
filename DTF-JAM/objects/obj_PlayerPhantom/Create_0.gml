left = false
right = false
up = false
down = false
shot_dir = 0
is_shoot = false
is_down = true
is_right = false
is_step = false
file = file_text_open_read(global.current_ini)
time = file_text_read_real(file)
file_text_readln(file)
is_dead = false
dead_cnt = 0