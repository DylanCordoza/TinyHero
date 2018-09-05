/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5AA48339
/// @DnDArgument : "code" "if (room == room1){$(13_10)	//ds_stack_push(global.Tasks,"room1");$(13_10)	room_goto(0);$(13_10)}$(13_10)if (room == room0){$(13_10)	room_goto(1);$(13_10)}"
if (room == room1){
	//ds_stack_push(global.Tasks,"room1");
	room_goto(0);
}
if (room == room0){
	room_goto(1);
}