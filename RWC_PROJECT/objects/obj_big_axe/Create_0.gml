depth = -999999;
name = "Big Axe";
dmg = 10;
pickup_mode = false;

if(alarm[0] <= 0){
	alarm[0] = 15;	
}

if(obj_player.player_dir == 0){ //if we're facing left
	image_xscale = -1;
}
else if(obj_player.player_dir == 1){ //if we're facing right
	image_xscale = 1;
}
