
rotation = lerp(rotation,45,0.1);

image_angle=rotation*oPlayer.image_xscale;

var _mousePress = mouse_check_button(mb_left);

var _breakable = instance_position(mouse_x,mouse_y,oBreakable)

with(_breakable){
	var _dist = distance_to_object(oPlayer);
	if(_dist< other.breakDistance){
		other.selectorInst =id;
	if (other.cooldown ==0 && _mousePress)
	{
			hp--;
			other.rotation =-20;
			other.cooldown =20;
	}
}
}
if(cooldown >0) cooldown--;
	
			



