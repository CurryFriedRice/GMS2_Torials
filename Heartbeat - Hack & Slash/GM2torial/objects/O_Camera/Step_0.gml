
var target_x = random_range(-screenshake,screenshake);
var target_y = random_range(-screenshake,screenshake);

if(!instance_exists(O_Skeleton)) exit;


target_x += O_Skeleton.x;
target_y += O_Skeleton.y - 48;

x = lerp(x, target_x,.2);
y = lerp(y, target_y,.2);

camera_set_view_pos(view_camera[0],x - width/2,y-height/2);

