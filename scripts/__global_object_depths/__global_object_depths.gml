function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // wall
	global.__objectDepths[1] = 0; // bomberman_parent
	global.__objectDepths[2] = 0; // input_get
	global.__objectDepths[3] = 0; // bomb
	global.__objectDepths[4] = 0; // softblock
	global.__objectDepths[5] = 0; // explosion
	global.__objectDepths[6] = 0; // softblock_child
	global.__objectDepths[7] = 10; // game_control
	global.__objectDepths[8] = 0; // item_obj
	global.__objectDepths[9] = -1; // bouncinbomb
	global.__objectDepths[10] = 0; // burnt_item_obj
	global.__objectDepths[11] = 0; // bomberman1
	global.__objectDepths[12] = 0; // bomberman2
	global.__objectDepths[13] = 0; // bomberman3
	global.__objectDepths[14] = 0; // bomberman4
	global.__objectDepths[15] = 0; // bomberman5
	global.__objectDepths[16] = 0; // bomberman6
	global.__objectDepths[17] = 0; // bomberman7
	global.__objectDepths[18] = 0; // bomberman8
	global.__objectDepths[19] = 0; // bomberman9
	global.__objectDepths[20] = 0; // bomberman10
	global.__objectDepths[21] = 0; // bomberman11
	global.__objectDepths[22] = 0; // bomberman12
	global.__objectDepths[23] = 0; // bomberman13
	global.__objectDepths[24] = 0; // bomberman14
	global.__objectDepths[25] = 0; // bomberman15
	global.__objectDepths[26] = 0; // bomberman16
	global.__objectDepths[27] = 0; // bomberman_dead
	global.__objectDepths[28] = 0; // rui_dead
	global.__objectDepths[29] = 0; // ai_control
	global.__objectDepths[30] = 0; // item_randompos
	global.__objectDepths[31] = 0; // notsafe_place
	global.__objectDepths[32] = 0; // menu_draw
	global.__objectDepths[33] = 0; // randomitem_obj
	global.__objectDepths[34] = 0; // object38
	global.__objectDepths[35] = 0; // Obj_setup
	global.__objectDepths[36] = 0; // obj_player
	global.__objectDepths[37] = 0; // ob_spawner
	global.__objectDepths[38] = 0; // obj_block
	global.__objectDepths[39] = -100; // obj_controller


	global.__objectNames[0] = "wall";
	global.__objectNames[1] = "bomberman_parent";
	global.__objectNames[2] = "input_get";
	global.__objectNames[3] = "bomb";
	global.__objectNames[4] = "softblock";
	global.__objectNames[5] = "explosion";
	global.__objectNames[6] = "softblock_child";
	global.__objectNames[7] = "game_control";
	global.__objectNames[8] = "item_obj";
	global.__objectNames[9] = "bouncinbomb";
	global.__objectNames[10] = "burnt_item_obj";
	global.__objectNames[11] = "bomberman1";
	global.__objectNames[12] = "bomberman2";
	global.__objectNames[13] = "bomberman3";
	global.__objectNames[14] = "bomberman4";
	global.__objectNames[15] = "bomberman5";
	global.__objectNames[16] = "bomberman6";
	global.__objectNames[17] = "bomberman7";
	global.__objectNames[18] = "bomberman8";
	global.__objectNames[19] = "bomberman9";
	global.__objectNames[20] = "bomberman10";
	global.__objectNames[21] = "bomberman11";
	global.__objectNames[22] = "bomberman12";
	global.__objectNames[23] = "bomberman13";
	global.__objectNames[24] = "bomberman14";
	global.__objectNames[25] = "bomberman15";
	global.__objectNames[26] = "bomberman16";
	global.__objectNames[27] = "bomberman_dead";
	global.__objectNames[28] = "rui_dead";
	global.__objectNames[29] = "ai_control";
	global.__objectNames[30] = "item_randompos";
	global.__objectNames[31] = "notsafe_place";
	global.__objectNames[32] = "menu_draw";
	global.__objectNames[33] = "randomitem_obj";
	global.__objectNames[34] = "object38";
	global.__objectNames[35] = "Obj_setup";
	global.__objectNames[36] = "obj_player";
	global.__objectNames[37] = "ob_spawner";
	global.__objectNames[38] = "obj_block";
	global.__objectNames[39] = "obj_controller";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
