///scr_find_old_room_controller(object, instance_id)

current_object = argument0;
current_instance = argument1;

var other_instance = noone;

if (instance_number(current_object) > 1 ){
	for(var i = 0; i < instance_number(current_object); i++) {
		other_instance = instance_find(current_object, i);
	
		if( other_instance != current_instance){
			return other_instance;
		}
	}
}

return noone;