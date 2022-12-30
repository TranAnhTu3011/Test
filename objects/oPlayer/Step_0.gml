/// @description Insert description here
// You can write your code in this editor
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));

var _inputX =_right - _left;
var _inputY =_down - _up;
if(keyboard_check(vk_shift))
{
	movespeed=3;
}
else movespeed =2;
moveX = _inputX*movespeed;
moveY = _inputY*movespeed;
// Collision
if (collision(x + moveX,y))
{
	while(!collision(x+sign(moveX),y))
	{
		x=x+sign(moveX);
	}
	moveX=0;
}
if (collision(x,y + moveY))
{
	while(!collision(x,y+sign(moveY)))
	{
		y+=sign(moveY);
	}
	moveY=0;
}

x += moveX;
y += moveY;
// huong di chuyen theo ban phim
global.d =0;

if(moveX>0)
{
	sprite_index=sPlayer_right;
	global.d=1;
	_j=1;
}
else if(moveY< 0)
{
	sprite_index=sPlayer_up;
	global.d=2;
	_j=2;
}else if (moveX<0)
{
	sprite_index=sPlayer_left;
	global.d=3;
	_j=3;
}
else if(moveY >0)
{
	sprite_index=sPlayer_down;
	global.d=4;
	_j=4;
}
else switch(_j){
	case 1:
	{
		sprite_index=sPlayerright;
		break;
	}
	case 2:
	{
		sprite_index=sPlayerup;
		break;
	}
	case 3:
	{
		sprite_index=sPlayerleft;
		break;
	}
	case 4:
	{
		sprite_index=sPlayerdown;
		break;
	}
}

// huong di chuyen theo chuot