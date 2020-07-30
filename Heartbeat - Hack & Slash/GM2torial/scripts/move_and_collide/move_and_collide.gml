///@arg xSpeed
///@arg ySpeed

var xSpeed = argument0;
var ySpeed = argument1;

if(!place_meeting(x+xSpeed, y+ySpeed, O_Wall)){
	x += xSpeed;
}