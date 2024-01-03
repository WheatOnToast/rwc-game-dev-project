/// @description shoot bullet

if(camera_get_view_x(view_camera[0])+288 >= x){
	bullet = instance_create_depth(x, y, -9999, obj_enemy_bullet);
	bullet.bullet_dir = BULLET_DIR.DOWN;
}



