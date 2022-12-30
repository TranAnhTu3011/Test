/// @description Insert description here
// You can write your code in this editor

if(instance_exists(selectorInst))
{
	with(selectorInst){
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_left, bbox_top, 1,1,0,-1,1);
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_right, bbox_top, 1,1,-90,-1,1);
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_right, bbox_bottom, 1,1,180,-1,1);
		draw_sprite_ext(sSelector, other.selectorFrame, bbox_left, bbox_bottom, 1,1,90,-1,1);
	}
	selectorFrame +=0.15;
	if(selectorFrame>=selectorFrameNumber) selectorFrame-=selectorFrameNumber;
	selectorInst=noone;
}



