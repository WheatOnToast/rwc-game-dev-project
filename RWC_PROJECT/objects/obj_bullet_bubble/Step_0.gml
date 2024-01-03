// if the last facing direction of player was to the left
if(alarm[0] <= 0){
	if(last_dir_of_player == 0){
		x = x - bullet_speed;
	}
	else if(last_dir_of_player == 1){
		x = x + bullet_speed;
	}
}
if(x > camera_get_view_x(view_camera[0])+256 || x < camera_get_view_x(view_camera[0])-16){
	instance_destroy();	
}

if(place_meeting(x, y, obj_wall)){
	if(alarm[0] <= 0){
		sprite_index = spr_bullet_bubble_pop;
		alarm[0] = 4;
	}
}

if(place_meeting(x-4, y, obj_bullet_fire)){
	if(alarm[0] <= 0){
		sprite_index = spr_bullet_bubble_pop;
		alarm[0] = 4;
	}
}

if(instance_exists(obj_player)){
	
	if(place_meeting(x-1, y, obj_player) ||  place_meeting(x+1, y, obj_player)){ //horizontal collision w/ player
		if(alarm[0] <= 0){
			sprite_index = spr_bullet_bubble_pop;
			alarm[0] = 4;
		}
	}
	
	if(place_meeting(x, y-1, obj_player)){
		if(alarm[0] <= 0){
			sprite_index = spr_bullet_bubble_pop;
			alarm[0] = 4;
		}
	}
	
}




// if the bullet is touching the enemy, it will lower their health and despawn
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
if(instance_exists(obj_flying_enemy_2)){
	if(place_meeting(x, y, obj_flying_enemy_2.id)){
		obj_flying_enemy_2.id.hp = obj_flying_enemy_2.id.hp - 1;	
		instance_destroy();
	}
}