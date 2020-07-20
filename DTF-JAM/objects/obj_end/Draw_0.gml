draw_set_halign(fa_center)
draw_set_valign(fa_middle)
text = ""
switch (current_text) {
	case 0: {
		text = "Mr.Second:\nThat's all. This second has come ..."
		break;
	}
	case 1: {
		text = "Mr.Second:\nEverything seems to get better. But what should I do now? Where to spend your time?"
		break;
	}
	case 2: {
		text = "Mr.Second:\nI dont know..."
		break;
	}
}
draw_text(display_get_width() / 4, display_get_height() / 4, text)