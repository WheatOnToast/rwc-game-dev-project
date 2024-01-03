if(place_meeting(x, y, obj_big_axe)){
	dead = true;
}
if(dead){
	if(alarm[1] <= 0){
		alarm[1] = 60;	
	}
	image_alpha -= 0.05;
	image_blend = c_red;
}

if(place_meeting(x, y, obj_player) && !dead){
	obj_player.hp = 0;	
}

if(alarm[0] <= 0){
	alarm[0] = 15;	
}