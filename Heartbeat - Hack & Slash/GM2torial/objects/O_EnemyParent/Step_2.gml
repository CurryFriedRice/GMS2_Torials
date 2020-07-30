if(hp<= 0 && State != "death")
{
	State = "death";
	//instance_destroy();
	repeat(experience)
	{
		instance_create_layer(x,y-10,"Effects",O_Exp);
	}
}

