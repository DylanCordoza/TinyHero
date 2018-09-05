/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 402821D1
/// @DnDArgument : "code" "if (ev_room_start){$(13_10)	last_room = ds_stack_pop(global.Tasks)$(13_10)	if(last_room == "room1"){$(13_10)		obj_player.x = obj_door.x+10;$(13_10)		obj_player.y = obj_door.y+10;$(13_10)	}$(13_10)}"
if (ev_room_start){
	last_room = ds_stack_pop(global.Tasks)
	if(last_room == "room1"){
		obj_player.x = obj_door.x+10;
		obj_player.y = obj_door.y+10;
	}
}