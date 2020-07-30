///@arg intensity
///@arg duration

var intensity = argument0;
var duration = argument1;

if(!instance_exists(O_Camera)) exit;

with(O_Camera)
{
	screenshake = intensity;
	alarm[0] = duration;
}