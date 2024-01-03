name = "Player";

//player states
enum PLAYER_STATE{ 
	STILL,
	MOVING,
	JUMPING
}
// a list of keywords that equal numbers
enum DIRECTION{
	LEFT, // this equals 0
	RIGHT // this equals 1
}

//stats
max_hp = 10;
hp = 10;
max_mp = 50;
mp = 50;
money = 10;

//spells 
spell_array = [obj_bullet_bubble, obj_bullet_fire];
selected_spell_index = 0;
selected_spell = spell_array[selected_spell_index];
selected_spell = obj_bullet_bubble;
melee_equip = obj_knife;

player_state = PLAYER_STATE.STILL;
horizontalSpeed = 0;
h_speed_carry = 0;
v_speed_carry = 0;
verticalSpeed = 0;
grv = 0.4;
walksp = 1.5;
player_dir = DIRECTION.RIGHT;
can_use_weapon = true;
depth = -999999;



player_ui = instance_create_depth(0,0,-999999,obj_player_UI);