 
//Move hold item

if(instance_exists(helditem))
{
	switch(_j)
	{
		case 0:
		{
			oPickaxe.image_xscale =-1;
			helditem.x=x-10;
	        helditem.y=y+9;
			oPickaxe.image_angle -=45;
			break;
		}
		case 1:
		{
			oPickaxe.image_xscale =1;
			helditem.x=x+6;
	        helditem.y=y+10;
			oPickaxe.image_angle -=45;
			break;
		}
		case 2:
		{
 			oPickaxe.image_xscale =1;
			helditem.x=x-3;
	        helditem.y=y+9;
			oPickaxe.image_angle -=45;
			break; 
		}
		case 3:
		{
			oPickaxe.image_xscale =-1;
			helditem.x=x-6;
	        helditem.y=y+9;
			oPickaxe.image_angle -=45;
			break;
		}
		case 4:
		{
			oPickaxe.image_xscale =-1;
			helditem.x=x-10;
	        helditem.y=y+10;
			oPickaxe.image_angle -=45;
			break;
		}
	}

}

