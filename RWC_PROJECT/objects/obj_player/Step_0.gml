key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_spell = keyboard_check_pressed(ord("Z"));
key_spell_switch = keyboard_check_pressed(ord("X"));
key_knife = keyboard_check_pressed(ord("C"));


if(hp <= 0 || y > 1024 || keyboard_check(ord("R"))){
	game_restart();	
}

// check which way player is facing
if(key_left){
	player_dir = DIRECTION.LEFT;
	player_state = PLAYER_STATE.MOVING;
	image_xscale = -1;
}
else if(key_right){
	player_dir = DIRECTION.RIGHT;	
	player_state = PLAYER_STATE.MOVING;
	image_xscale = 1;
}
else{
	player_state = PLAYER_STATE.STILL;	
}

if(key_left && key_right){
	player_state = PLAYER_STATE.STILL;	
}

var move = key_right - key_left;

horizontalSpeed = move * walksp;
verticalSpeed = verticalSpeed + grv;

if(place_meeting(x, y+1, obj_wall) && key_jump || place_meeting(x, y+1, obj_bullet_bubble)){
	verticalSpeed = -7;	
} 

var h_speed_final = horizontalSpeed + h_speed_carry;
h_speed_carry = 0;

//Horizontal Collision
if (place_meeting(x+h_speed_final,y,obj_wall))
{
	while (!place_meeting(x+sign(h_speed_final), y, obj_wall))
	{
		x = x + sign(h_speed_final);
	}
	h_speed_final = 0;
	horizontalSpeed = 0;
}
x = x + round(h_speed_final);

var v_speed_final = verticalSpeed + v_speed_carry;
v_speed_carry = 0;

//Vertical Collision
if (place_meeting(x, y+verticalSpeed, obj_wall))
{
	while (!place_meeting(x,y+sign(verticalSpeed),obj_wall))
	{
		y = y + sign(verticalSpeed);
	}

	verticalSpeed = 0;
}
y = y + round(verticalSpeed);


// switching spells
if(key_spell_switch){ 
	selected_spell_index++;
	if(selected_spell_index > array_length(spell_array)-1){
		selected_spell_index = 0;	
	}
	selected_spell = spell_array[selected_spell_index];
}


//Attacking
if(can_use_weapon == true){
	
	if(key_spell){
		can_use_weapon = false;
	
		if(mp > 0){
			switch(selected_spell_index){
				case 0:
					if(mp >= 1){
						mp -= 1;
						if(alarm[2] <= 0){
							alarm[2] = 1;	
						}
					}
					break;
				case 1:
					if(mp >= 5){
						mp -= 5;
						if(alarm[2] <= 0){
							alarm[2] = 1;	
						}
					}
					break;
			}
		}
	}
	else if(key_knife){
		instance_create_depth(x, y, -9999, melee_equip);	
		can_use_weapon = false;
	}
	
	if(alarm[0] <= 0){ //cooldown timer on weapon (every 60 frames is 1 second)
		alarm[0] = 30;	
	}
}

if(place_meeting(x,y,obj_shop_item)){ //cant use weapons if you're touching a shop item
	can_use_weapon = false;
}
else{
	can_use_weapon = true;	
}

if(mp < 0){
	mp = 0;
}
//Healing or MP gain
if(mp > max_mp){
	mp = max_mp;	
}
if(hp > max_hp){
	hp = max_hp;	
}