/// @description Insert description here
// You can write your code in this editor
with (all){
	depth=-bbox_bottom;
	if(instance_exists(oPlayer)&& oPlayer.helditem==id){
		depth-=15;
		if(global.d==2 or oPlayer._j==2)
		{depth+=20;}
	}
}


