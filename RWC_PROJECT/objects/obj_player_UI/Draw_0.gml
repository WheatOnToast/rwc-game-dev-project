draw_set_font(global.font);
draw_text(camera_get_view_x(view_camera[0])+16, y+4, "HP: "+string(obj_player.hp));
draw_text(camera_get_view_x(view_camera[0])+64, y+4, "MP: "+string(obj_player.mp));
draw_text(camera_get_view_x(view_camera[0])+112, y+4, "SPELL: ");
draw_text(camera_get_view_x(view_camera[0])+164, y+4, "MONEY: "+string(obj_player.money));
draw_sprite(spell_graphic_list[obj_player.selected_spell_index], 0,camera_get_view_x(view_camera[0])+150, y+8)