if(place_meeting(x, y, obj_player)){
	switch(pickup_type){
		case 0:
			obj_player.hp += 5;
			break;
		case 1:
			obj_player.mp += 10;
			break;
		case 2:
			obj_player.hp += 10;
			obj_player.mp += 50;
			break;
	}
	instance_destroy();
}

switch(pickup_type){
	case 0:
		image_index = 0;
		image_speed = 0;
		break;
	case 1:
		image_index = 1;
		image_speed = 0;
		break;
	case 2:
		image_speed = 6;
		break;
}