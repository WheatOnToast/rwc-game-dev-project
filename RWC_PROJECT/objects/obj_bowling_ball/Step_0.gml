// checks if enemy is dead
if(hp <= 0){
	if(alarm[1] <= 0){
		alarm[1] = 180;	
	}
	image_alpha -= 0.05;
	image_blend = c_red;
}


if(place_meeting(x, y, obj_knife)){
	hp -= obj_knife.dmg;	
}

// checking for the player. if he's near the player, he will chase them
if(place_meeting(x-64, y, obj_player)){
	x = x - enemy_speed;
}

if(place_meeting(x+64, y, obj_player)){
	x = x + enemy_speed;	
}

// hitting the player. if touching the player, the player will take damage
if(place_meeting(x, y, obj_player)){
	if(alarm[0] <= 0){ //every two seconds, the player will take damage
		alarm[0] = 15;
	}
}

