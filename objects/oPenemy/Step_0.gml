 /// @description Insert description here
// You can write your code in this editor
switch(state){
	case states.Idle:
	     checkPlayer();
		 if path_index != -1
		 {state = states.Move;}
		 enemyProcess();
		 break; 
	case states.Move:
	    checkPlayer();
		
		checkFacing();
		if path_index != -1
		 {state = states.Move;}
		enemyProcess();
		break;
	case states.Attack:
	    
	    enemyProcess();
		break;
	case states.Dead:
	    
		break;
		
}




