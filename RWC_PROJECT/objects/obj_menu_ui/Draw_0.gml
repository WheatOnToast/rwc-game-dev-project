draw_set_font(global.font);
draw_text_transformed(16, 16, "RWC Game Dev Project", 2, 2, 0);
draw_text(32, 64, "Select Level:");

for (i = 0; i < array_length(levels); i++){
	if(pos != i){
		draw_text_color(32, 96 + (16 * i), level_names[i], c_white, c_white, c_white, c_white, 1);
	}
	else{
		draw_text_color(32, 96 + (16 * i), level_names[i], c_white, c_white, c_yellow, c_yellow, 1);
	}
}