///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg knockback
///@arg lifespan
///@arg damage
///@arg xScale

var _x = argument0;
var _y = argument1;
var _creator = argument2;
var _sprite = argument3;
var _knockback = argument4;
var _lifespan = argument5;
var _damage = argument6;
var _xScale = argument7;

var hitbox = instance_create_layer(_x,_y, "Instances", O_Hitbox);

hitbox.sprite_index = _sprite;
hitbox.image_xscale = _xScale;
hitbox.Creator = _creator;
hitbox.Knockback = _knockback;
hitbox.alarm[0] = _lifespan;
hitbox.Damage = _damage;

//show_debug_message("I've created a hitbox | " + _x +" | " + _y+" | " + _creator );