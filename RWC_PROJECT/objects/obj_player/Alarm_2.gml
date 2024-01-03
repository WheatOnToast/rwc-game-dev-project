/// @description Shoot Spell
switch(player_dir){
	case 0:
		spell = instance_create_depth(x - 20, y, -9999, selected_spell);	
		break;
	case 1:
		spell = instance_create_depth(x + 20, y, -9999, selected_spell);
		break;
}