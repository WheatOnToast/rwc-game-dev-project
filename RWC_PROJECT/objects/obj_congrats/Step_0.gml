if(instance_exists(obj_player)){
	obj_player.x = -32;
	obj_player.y = -32;
}

if(keyboard_check_pressed(ord("R"))){
	game_restart();	
}