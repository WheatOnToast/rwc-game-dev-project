if(obj_player.player_dir == 0){ //if we're facing left
	x = obj_player.x - 5;
	y = round(obj_player.y);
}
else if(obj_player.player_dir == 1){ //if we're facing right
	x = obj_player.x + 5;
	y = round(obj_player.y);
}

if(instance_exists(obj_bowling_ball)){
	if(place_meeting(x, y, obj_bowling_ball.id)){
		obj_bowling_ball.id.hp = obj_bowling_ball.id.hp - 1;	
		instance_destroy();
	}
}
if(instance_exists(obj_flying_enemy)){
	if(place_meeting(x, y, obj_flying_enemy.id)){
		obj_flying_enemy.id.hp = obj_flying_enemy.id.hp - 1;	
		instance_destroy();
	}
}
if(instance_exists(obj_flying_enemy_1)){
	if(place_meeting(x, y, obj_flying_enemy_1.id)){
		obj_flying_enemy_1.id.hp = obj_flying_enemy_1.id.hp - 1;	
		instance_destroy();
	}
}