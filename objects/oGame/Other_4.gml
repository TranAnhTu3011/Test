/// @description Insert description here
// You can write your code in this editor
// tile size
#macro Ts 16
//get tiles in room
var  _w =ceil(room_width/Ts);
var _h=ceil(room_height/Ts);
global.Grid = mp_grid_create(0,0,_w,_h,Ts,Ts);
mp_grid_add_instances(global.Grid,oCtCollisions,false);
 







