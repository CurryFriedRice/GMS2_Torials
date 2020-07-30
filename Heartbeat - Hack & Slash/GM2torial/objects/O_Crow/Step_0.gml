switch(State){
	case "chase":
	if(!instance_exists(O_Skeleton)) break;
		if(place_meeting(x,y, O_Skeleton) && attacked == false && O_Skeleton.State != "roll"){
			create_hitbox(x,y,self,sprite_index, knockback, 1, damage, image_xscale);
			attacked= true;
		}
		if(attacked == true){
			vspeed =-1;
		}
	break;
	case "death":
	repeat(6)
		{
			instance_create_layer(x + random_range(4,4),y + random_range(4,4) -16, "Effects",O_Feather);
		}
		instance_destroy();
	break;
}

if(y < 0)instance_destroy();