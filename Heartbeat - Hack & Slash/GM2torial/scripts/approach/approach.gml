///@arg currentValue
///@arg targetValue
///@arg stepValue

var currentValue = argument0;
var targetValue = argument1;
var stepValue = argument2;

if(currentValue < targetValue){
	currentValue += stepValue;
	currentValue = min(currentValue,targetValue);
}else
{
	currentValue -= stepValue;
	currentValue = max(currentValue,targetValue);
}

return currentValue;