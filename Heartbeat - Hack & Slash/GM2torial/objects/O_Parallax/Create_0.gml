
var lay_id = layer_get_id("CloseGravesBackground");
var back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id, CloseColor);


lay_id = layer_get_id("FarGravesBackground");
back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id, FarColor);