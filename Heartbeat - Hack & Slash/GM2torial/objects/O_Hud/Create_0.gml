var view_id = view_camera[0];
var view_width = camera_get_view_width(view_id);
var view_height = camera_get_view_height(view_id);

display_set_gui_size(view_width,view_height);

draw_max_hp = O_Skeleton.max_hp;
draw_hp = O_Skeleton.hp;


audio_play_sound(a_music, 4, true);
