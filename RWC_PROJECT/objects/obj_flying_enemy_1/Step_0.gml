// checks if enemy is dead

if(hp <= 0){
	if(alarm[2] <= 0){
		alarm[2] = 180;	
	}
	image_alpha -= 0.05;
	image_blend = c_red;
}


if(place_meeting(x, y, obj_knife)){
	hp -= obj_knife.dmg;	
}
if(place_meeting(x, y, obj_big_axe)){
	hp -= obj_big_axe.dmg;	
}

if(alarm[0] <= 0 && hp > 0){ //shoot a bullet every seconds
	alarm[0] = 60;	
}

if(y <= top){ //check when to move up or down
	move_up = 0;	
}
else if(y >= bottom){
	move_up = 1;
}


switch(move_up){ //move up or down
	case 0:
		y += 1;
		break;
	case 1:
		y -= 1;
		break;
}

// hitting the player. if touching the player, the player will take damage
if(place_meeting(x, y, obj_player) && hp > 0){
	if(alarm[1] <= 0){ //every two seconds, the player will take damage
		alarm[1] = 15;
	}
}
