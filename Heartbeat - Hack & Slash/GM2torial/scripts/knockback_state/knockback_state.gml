///@arg knockbackSprite
///@arg nest state
var _knockbackSprite = argument0;
var _nextState = argument1;


set_state_sprite(_knockbackSprite,0,0);
move_and_collide(-knockback_speed * sign(image_xscale), 0);
var knockback_friction = 0.25;
knockback_speed = approach(knockback_speed,0,knockback_friction);
if(knockback_speed < 1) State = _nextState;