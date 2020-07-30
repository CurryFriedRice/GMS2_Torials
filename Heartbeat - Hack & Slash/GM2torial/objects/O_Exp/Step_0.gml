if(!instance_exists(O_Skeleton)) exit;

var dir = point_direction(x,y, O_Skeleton.x, O_Skeleton.y);
var acceleration = 0.25;

if(speed > max_speed) speed = max_speed;

motion_add(dir,acceleration);