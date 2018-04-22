/// @description turn on dialog
// You can write your code in this editor

// if the player is ahead choose a line from the beghind array
var dialog_index = -1;
var tries = 0 ;

if ( obj_player.x > x ){
	dialog_index = irandom_range(0, (array_height_2d(dialog_behind) - 1));
	
	while ( dialog_behind[dialog_index, 1] == true && tries <= 3 ){
			dialog_index = irandom_range(0, (array_height_2d(dialog_behind) - 1));
			tries ++;
	}

	if ( dialog_behind[dialog_index, 1] == false ) {
		dialog = dialog_behind[dialog_index, 0];
		dialog_behind[dialog_index, 1] = true;
		dialog_state = "talking";
		alarm[11] = 200;
	}
	
// if the player is ahead choose a line from the ahead array
} else if ( obj_player.x < x ){
	dialog_index = irandom_range(0, (array_height_2d(dialog_ahead) - 1));
	
	while ( dialog_ahead[dialog_index, 1] == true && tries <= 3 ){
			dialog_index = irandom_range(0, (array_height_2d(dialog_ahead) - 1));
			tries ++;
	}
	
	if ( dialog_ahead[dialog_index, 1] == false ) {
		dialog = dialog_ahead[dialog_index, 0];
		dialog_ahead[dialog_index, 1] = true;
		dialog_state = "talking";
		alarm[11] = 200;
	}
}

