/// @description Insert description here
// You can write your code in this editor

/*
draw_sprite
draw_sprite_streched
*/
draw_self();
if (hp<hpMax)
draw_healthbar(x-sprite_width/2,y+10,x+sprite_width/2,y+12,((hp+1)/(hpMax+1))*100,c_black,c_red,c_green,0,true,true);


