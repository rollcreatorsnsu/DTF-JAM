audio_stop_sound(sound_game)
audio_play_sound(sound_boss_fighting, 50, true)
object_set_sprite(obj_Enemy_Boss, spr_boss_welcome);
is_begin = true
b = 0
is_step = false
is_reflected = false
is_right = true
step_count = 0
is_dead = false
dead_count = 0
is_attack_1 = false
attack_1_count = 0
is_attack_2 = false
attack_2_count = 0
portal_count = 0
bullet = false
alarm_set(0, 100)
alarm_set(2, 10)