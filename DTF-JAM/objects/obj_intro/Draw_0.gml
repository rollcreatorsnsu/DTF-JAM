draw_set_halign(fa_center)
draw_set_valign(fa_middle)
text = ""
switch (current_text) {
	case 0: {
		text = "Mr.Second:\nThere seems to be nothing worse than wasted time."
		break;
	}
	case 1: {
		text = "Mr.Second:\nSo it is, and this time has accumulated too much that the second has come to get rid of it."
		break;
	}
	case 2: {
		text = "Mr.Second:\nI, or rather me and others, I have only 60 seconds. No time to chat! Time to kill time!"
		break;
	}
}
draw_text(display_get_width() / 4, display_get_height() / 4, text)