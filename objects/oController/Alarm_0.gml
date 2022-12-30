/// @description swap item
if(global.All[# current, item.sprite]==global.All[# dragitemslot,item.sprite] && current!= dragitemslot)
{
	
	global.All[# current,item.amount]+=global.All[# dragitemslot,item.amount];
	sell(global.All,dragitemslot);
}
else
{
var tempgrid = ds_grid_create(1,item.height);
ds_grid_set_grid_region(tempgrid,global.All,current,0,current,item.height,0,0);
//replace we're hovering over
ds_grid_set_grid_region(global.All,global.All,dragitemslot,0,dragitemslot,item.height,current,0);
//replace item we dragged
ds_grid_set_grid_region(global.All,tempgrid,0,0,0,item.height,dragitemslot,0);
ds_grid_destroy(tempgrid);
}





