/// @description tao mang 2 chieu cho inventoty
checkopen = 0;
// drop
current =undefined;
// info
currentitem = undefined;
//drag
dragged=undefined;
dragging=false;
dragitemslot=undefined;
s=8;
enum item{
	name,
	sprite,
	amount,
	price,
	object,
	height,
}
global.All=ds_grid_create(0,item.height);
// them item vao inventory
additem(["wood",sWood,1,40,oWood]);
additem(["wood",sWood,1,40,oWood]);
additem(["wood",sWood,1,40,oWood]);
additem(["wood",sWood,1,40,oWood]);
additem(["leaf",sLeaf,1,1,oLeaf]);







