/// @description Insert description here
// You can write your code in this editor

if(checkopen==1)
{
	
	draw_set_font(fnt);
	// draw inventory
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_sprite_ext(sInventory,0,MidXcamera(),MidYcamera(),0.5,0.5,0,-1,1);
	// draw items
	for(var i=0;i<ds_grid_width(global.All);i++)
	{
		var _sep=19.35;
		var _x=MidXcamera()-48+_sep*i;
		var _y=MidYcamera()-28;
		
		if(i<6){
			//draw_text(MidXcamera()-_x+_sep*i,MidYcamera()-_y,global.All)
		draw_sprite_ext(global.All[# i,item.sprite],0,_x,_y,0.8,0.8,0,-1,1);
		// text amount
		draw_text(_x+4,_y,global.All[# i,item.amount]);
	}
	else if (i<12)
	{
		_x=MidXcamera()-48+_sep*(i-6);
		_y=MidYcamera()-28+19;
		draw_sprite_ext(global.All[# i,item.sprite],0,_x,_y,0.8,0.8,0,-1,1);
		//text amount
		draw_text(_x+4,_y,global.All[# i,item.amount]);
	}
	// dragging
	/*
	if(instance_exists(global.All[# i,item.object]==false))
	{
		currentitem=instance_create_layer(-32,-32,"menu",global.All[# i,item.object]);
	}
	*/
	
	
	// check mouse
	
	if(point_in_rectangle(mouse_x,mouse_y,_x-s,_y-s,_x+s,_y+s))
	{
		draw_set_alpha(0.25);
		draw_set_color(c_yellow);
		draw_rectangle(_x-8,_y-8,_x+8,_y+8,false);
		draw_set_alpha(1);
		draw_set_color(c_white);
		current = i;
		//draw info
		if(instance_exists(global.All[# i,item.object])==false && dragging==false)
		{
			currentitem =instance_create_layer(-32,-32,"menu",global.All[# i,item.object]);
			currentitem.name=global.All[# i,item.name];
			currentitem.price =global.All[# i, item.price];
			currentitem.isInmenu=true;
		}
		if(mouse_check_button_pressed(mb_left))
		{
			sell(global.All,current);
		}
	
	}
	
	}
	
	if(mouse_check_button(mb_right))
	{
		dragged = instance_find(oPitems,0);
		dragged.x = mouse_x;
		dragged.y = mouse_y;
		dragged.visible = true;
		dragged.image_xscale = 0.8;
		dragged.image_yscale = 0.8;
		dragging = true;
	}
		if(mouse_check_button_pressed(mb_right))
	{
		dragitemslot=current;
	}
	if(mouse_check_button_released(mb_right))
	{
		dragged.x=-100;
		dragged.y=-100;
		dragging=false;
		alarm[0]=1;
	}
	/*if(dragging ==true)
	{
		draw_sprite_ext(global.All[# i,item.sprite],0,mouse_x,mouse_y,0.8,0.8,0,-1,1);
	}*/
			//draw_text(_x,_y,global.All[# i,item.detail]);
	if(instance_number(oPitems)>1)
	{
		instance_destroy(oPitems);
	}
	
}













