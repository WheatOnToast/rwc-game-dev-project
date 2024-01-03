if(pickup_mode){
	if(place_meeting(x,y,obj_player)){
		obj_player.melee_equip = obj_big_axe;
		obj_big_guy.x = camera_get_view_x(view_camera[0])-32;
		instance_destroy();
	}
}
else{
	if(obj_player.player_dir == 0){ //if we're facing left
		x = obj_player.x - 5;
		y = round(obj_player.y);
	}
	else if(obj_player.player_dir == 1){ //if we're facing right
		x = obj_player.x + 5;
		y = round(obj_player.y);
	}
}