

var hp_y = 8;
var hp_x = 8;
var hp_width = 198;
var hp_height = 6;
var hp_percent_instant;
var hp_percent_lerp;

if(instance_exists(O_Skeleton)) {
	draw_hp = lerp(draw_hp, O_Skeleton.hp,0.1);
	draw_max_hp = O_Skeleton.max_hp;
	hp_percent_instant = O_Skeleton.hp/draw_max_hp;
	hp_percent_lerp = draw_hp/draw_max_hp;
}
else
{
	draw_hp = lerp(draw_hp,0,.1)

	hp_percent_instant = 0;
	hp_percent_lerp = draw_hp/draw_max_hp;
}


draw_rectangle_color(hp_x, hp_y, hp_x + (hp_width * hp_percent_lerp), hp_y+ hp_height, c_red, c_red, c_red, c_red, false);
draw_rectangle_color(hp_x, hp_y, hp_x + (hp_width * hp_percent_instant), hp_y+ hp_height, c_white, c_white, c_white, c_white, false);
//draw_rectangle_color(hp_x, hp_y, hp_x + (hp_width * hp_percent_instant), hp_y+ hp_height, c_gray, c_gray, c_gray, c_gray, true);

//draw_line_width_color(hp_x-1,hp_y-1,hp_x-1,hp_y+hp_height+1,4,c_black,c_black);
//Vertical
draw_line_width_color(hp_x-1,hp_y-1,hp_x-1,hp_y+hp_height+1,2,c_black,c_black);
draw_line_width_color(hp_x+1+hp_width,hp_y-1,hp_x+1+hp_width,hp_y+hp_height+1,2,c_black,c_black);
//Horizontal
draw_line_width_color(hp_x-1,hp_y-1,hp_x+1+hp_width ,hp_y-1,2,c_black,c_black);
draw_line_width_color(hp_x-1,hp_y+1+hp_height, hp_x+1+hp_width ,hp_y+1+hp_height,2,c_black,c_black);

if(!instance_exists(O_Skeleton)) exit;

var text = "KILLS: " +string(O_Skeleton.kills);
var text_width = string_width(text);
var text_height = string_height(text);
var start_x = 8;
var start_y = 18;
var padding_x = 6;
var padding_y = 4;


draw_rectangle_color(start_x, start_y, start_x + text_width + padding_x, start_y+text_height+padding_y, c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
draw_text(start_x +(padding_x/2),start_y+(padding_y/2),text);

start_x += text_width + padding_x*2;
start_y = 18;

var text = "Level: " +string(O_Skeleton.level);
var text_width = string_width(text);
var text_height = string_height(text);



draw_rectangle_color(start_x, start_y, start_x + text_width + padding_x, start_y+text_height+padding_y, c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
draw_text(start_x +(padding_x/2),start_y+(padding_y/2),text);