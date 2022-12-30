/// @description Insert description here
// You can write your code in this editor


draw_self();

if (isInmenu==true){
	draw_set_color(c_orange);
	draw_set_font(fInfo);
	draw_text_ext(Xcamera(),Ycamera(),name+" is worth "+string(price)+" each gold ",font_get_size(fnt)*1.5,sprite_get_width(sInventory));
}





