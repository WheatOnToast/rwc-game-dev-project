
/*
implementing the shop:
- we need money (money variable that holds how much money we have)
			
pseudocode:
			
if(player is touching the item AND player has enough money AND presses Z){
	if the item is a HP up:
		then we boost the player's HP
	if the item is a MP up:
		then we boost the player's MP
	if the item is a spell:
		then we add the spell to the player's spell slots
					
	the item will disappear 
}
*/

if( place_meeting(x,y,obj_player) && obj_player.money >= cost && keyboard_check_pressed(ord("Z")) ){
	shop_item.alarm[0] = 1;

	show_debug_message("ENOUGH MONEY");
	obj_player.money -= cost;
	instance_destroy();
}
else if(place_meeting(x,y,obj_player) && obj_player.money < cost && keyboard_check_pressed(ord("Z"))){
	show_debug_message("NOT ENOUGH MONEY");	
}




