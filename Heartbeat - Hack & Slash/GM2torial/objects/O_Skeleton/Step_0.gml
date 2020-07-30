

switch(State){

case "move":
#region Move State
	if(input.right){
	 image_xscale = 1;
	 sprite_index = s_skeleton_run;
	 move_and_collide(MoveSpeed,0);
	 
	}

	if(input.left){
		image_xscale = -1;
		sprite_index = s_skeleton_run;
		move_and_collide(-MoveSpeed,0);
	}

	if(!input.right && !input.left)
	{
		sprite_index = s_skeleton_idle;
		image_speed = 0.4;
	}
	else
	{
		if(animation_hit_frame(2) || animation_hit_frame(5)) audio_play_sound(a_footstep,2,false);
	}
	
	if(input.roll){ 
		State = "roll";
		image_index = 0;
	}
	
	if(input.attack){
		State = "attack";
		image_index = 0;
	}
	#endregion
break;

case "roll":
	#region Roll State
	sprite_index = s_skeleton_roll;
	image_speed = 1;
	move_and_collide(MoveSpeed*1.5 * image_xscale, 0);
	
	if(animation_end())
	{
		State = "move";
	}
	#endregion
	break;
	
case "attack":
	#region Attack State
	switch(sprite_index){
		case s_skeleton_idle:
		case s_skeleton_run:
			set_state_sprite(s_skeleton_attack_one, 1, 0);		
			break;
		case s_skeleton_attack_one:
			if(animation_hit_frame(1)) {
			create_hitbox(x,y,self, s_skeleton_attack_one_damage, 2, 6, 7, image_xscale);
			audio_play_sound(a_swipe,3,false);
			}
			if(input.attack && animation_hit_fram_range(2,4))
				set_state_sprite(s_skeleton_attack_two, 1, 0);
		
			break;
		case s_skeleton_attack_two:
		if(animation_hit_frame(2)) {
			create_hitbox(x,y,self, s_skeleton_attack_two_damage, 2, 6, 8, image_xscale);
		audio_play_sound(a_swipe,3,false);
		}
			if(input.attack && animation_hit_fram_range(2,4))
				set_state_sprite(s_skeleton_attack_three, 1, 0);
	
		break;
		case s_skeleton_attack_three:
			if(animation_hit_frame(3)){
				create_hitbox(x,y,self, s_skeleton_attack_three_damage, 4, 10, 10, image_xscale);
			audio_play_sound(a_swipe,3,false);
			}
			if(input.attack && animation_hit_fram_range(5,6))
				set_state_sprite(s_skeleton_attack_one, 1, 0);
		break;
		default:
			break;
	}

	if(animation_end()) State = "move";

	#endregion
	break;
	
	case "knockback":
		knockback_state(s_skeleton_hitstun,"move");
	break;
default:
break;
}
