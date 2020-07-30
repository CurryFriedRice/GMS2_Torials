event_inherited();
State = "chase";
max_hp = 1;
hp = max_hp;
image_speed = 0.2;

hspeed= random_range(2,6);

if(instance_exists(O_Skeleton)) hspeed *= sign(O_Skeleton.x - x);

image_xscale = sign(hspeed);

damage = 5;
knockback = 2;
attacked = false;
experience = 2;