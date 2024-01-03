if(bullet_dir == BULLET_DIR.LEFT){
	x = x - bullet_speed;
}
else if(bullet_dir = BULLET_DIR.RIGHT){
	x = x + bullet_speed;
}
else if(bullet_dir == BULLET_DIR.UP){
	y = y - bullet_speed;	
}
else{
	y = y + bullet_speed;	
}

if(x > camera_get_view_x(view_camera[0])+512 || x < camera_get_view_x(view_camera[0])-16){
	instance_destroy();	
}

if(place_meeting(x, y, obj_player)){
	obj_player.hp = obj_player.hp - 2;	
	instance_destroy();
}

if(place_meeting(x, y, obj_wall) || x < camera_get_view_x(view_camera[0]) - 64){
	instance_destroy();	
}