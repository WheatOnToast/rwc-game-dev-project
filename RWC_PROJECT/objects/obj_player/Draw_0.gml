draw_self();
if(player_state == PLAYER_STATE.MOVING){
	sprite_index = spr_player_walk;	
}
if(player_state == PLAYER_STATE.STILL){
	sprite_index = spr_player;	
}
