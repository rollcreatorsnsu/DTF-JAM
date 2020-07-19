if (irandom_range(1, 2) == 1) {
	is_attack_1 = true
	attack_1_count = 0
} else {
	is_attack_2 = true
	attack_2_count = 0
	alarm_set(1, 1000)
}