if(!instance_exists(O_Skeleton))exit;
image_xscale = sign(O_Skeleton.x - x);
	if(image_xscale == 0) image_xscale = 1;
		
	var distance_to_player = point_distance(x,y, O_Skeleton.x,O_Skeleton.y);
	if(distance_to_player < AttackDistance) 
	{			
		State = "attack";
	}else
	{
		move_and_collide(image_xscale * MoveSpeed, 0);
	}