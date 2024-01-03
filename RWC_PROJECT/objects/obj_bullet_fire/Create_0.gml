name = "bullet_fire"
dmg = 5;
bullet_speed = 3;
last_dir_of_player = obj_player.player_dir; // hold the last direction the player was facing
if(last_dir_of_player == 0){
	image_xscale = -1;
}
mp_cost = 5;
