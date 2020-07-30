draw_self();

if(State == "death") exit;
if(alarm[0] > 0){
	var height = sprite_height;
	
	/*
	draw_hp = lerp(draw_hp, O_Skeleton.hp,0.1);
	draw_max_hp = O_Skeleton.max_hp;
	hp_percent_instant = O_Skeleton.hp/draw_max_hp;
	hp_percent_lerp = draw_hp/draw_max_hp;
	*/
	draw_hp = lerp(draw_hp, hp, 0.1);
	
	draw_rectangle_color(x-12, y-height, x-12 + (draw_hp/max_hp) *24, y-height+2, c_red,c_red, c_red,c_red,false);
	draw_rectangle_color(x-12, y-height, x-12 + (hp/max_hp) *24, y-height+2, c_white,c_white, c_white,c_white,false);
	
	draw_sprite(s_enemyLife, 0,x-12,y-height);
	
}