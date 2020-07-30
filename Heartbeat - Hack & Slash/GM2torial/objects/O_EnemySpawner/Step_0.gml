var enemy_count = instance_number(O_EnemyParent);

if(instance_exists(O_Skeleton) && enemy_count < O_Skeleton.kills/4)
{
	if(enemy_count > 5)exit;
	var enemy = choose(O_Knight,O_Crow, O_Crow);
	if(O_Skeleton.kills >20 && !instance_exists(O_Boss)){
		enemy = choose(O_Knight,O_Crow, O_Crow, O_Boss);
	}
	
	var new_X = random_range(220,room_width-220);
	while (point_distance(new_X,0, O_Skeleton.x,0) < 200)
	{
		new_X = random_range(220,room_width-220);
	}
	instance_create_layer(new_X, O_Skeleton.y, "Instances", enemy); 
}