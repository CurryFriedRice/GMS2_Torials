switch(State)
{
	case "chase":
		set_state_sprite(s_boss_walk,0.5,0);			
		boss_chaseState();
		boss_knockback();
		break;
	case "attack":
		set_state_sprite(s_boss_attack,.6,0);
		boss_knockback();
		if(animation_hit_frame(7))
		{ 
			create_hitbox(x,y,self, s_boss_attack_damage, 10, 4, 20, image_xscale);
			add_sceenshake(15,15);
			audio_play_sound(a_big_hit,5,false);
			audio_play_sound(a_medium_hit,2,false);
		}
		if(animation_end())
		{
			State = "stall";
			alarm[1] = 30;
		}
		break;
	case "death":
		death_state(s_boss_die);
		boss_knockback();
	break;
	case "stall":
		set_state_sprite(s_boss_idle,.1,0);
		boss_knockback();
		break;
}