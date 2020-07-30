switch(State){
	case "chase":
	#region Chase State
		set_state_sprite(s_knight_walk,0.4,0);
		chase_state();
		#endregion
		break;
	case "attack":
	#region Attack State
		set_state_sprite(s_knight_attack,0.8,0);
		if(animation_hit_frame(4)){
			create_hitbox(x,y,self, s_skeleton_attack_one_damage, 4, 3, 5, image_xscale);
			audio_play_sound(a_swipe,3,false);
		}
		if(animation_end()) State = "chase";
	#endregion
	break;
	
	case "knockback":
	#region
		knockback_state(s_knight_hitstun,"chase");
	#endregion
	break;
	case "death":
		death_state(s_knight_die);
	break;
	default:
	break;

}