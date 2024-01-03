up_key = keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
select_key = keyboard_check_pressed(ord("Z"))

if(alarm[0] <= 0 && tutorial_showing = false){
	alarm[0] = 600;		
}

if(up_key){
	pos--;	
}
else if(down_key){
	pos++;
}

if(pos < 0){
	pos = 0	
}
else if(pos >= array_length(level_names)){
	pos = array_length(level_names) - 1;
}

if(!tutorial_showing){
	if(select_key){room_goto(levels[pos])}
}


if(tutorial_showing && (select_key || up_key || down_key)){
	tutorial_showing = false;
	instance_destroy(obj_tutorial);
}