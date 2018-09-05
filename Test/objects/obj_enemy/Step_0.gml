/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66E43FE8
/// @DnDArgument : "code" "depth = -y;$(13_10)dist_to_player = sqrt(sqr(obj_player.x - x)+sqr(obj_player.y + y));$(13_10)if (hit > 0){$(13_10)	hit -= 1$(13_10)}$(13_10)$(13_10)if (hp <= 0){$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)if(dist_to_player > 30 && hit == 0){$(13_10)	direction = point_direction( x, y, obj_player.x, obj_player.y);$(13_10)	speed = 2;$(13_10)}$(13_10)else if (dist_to_player <=30){$(13_10)	speed = 0;$(13_10)	//var ints;$(13_10)	//ints = instance_create_depth(x, y, depth, obj_attack);$(13_10)	//ints.parent_object = obj_enemy;$(13_10)	//ints.damage = 3;$(13_10)	//ints.knockback = 4;$(13_10)}$(13_10)$(13_10)//Notes$(13_10)// Fix speed to work in isometric scale$(13_10)// to fix speed change it to hard position value changes$(13_10)//create attacks somehow still!!!!$(13_10)//long term add pathing to player!!!!!"
depth = -y;
dist_to_player = sqrt(sqr(obj_player.x - x)+sqr(obj_player.y + y));
if (hit > 0){
	hit -= 1
}

if (hp <= 0){
	instance_destroy();
}

if(dist_to_player > 30 && hit == 0){
	direction = point_direction( x, y, obj_player.x, obj_player.y);
	speed = 2;
}
else if (dist_to_player <=30){
	speed = 0;
	//var ints;
	//ints = instance_create_depth(x, y, depth, obj_attack);
	//ints.parent_object = obj_enemy;
	//ints.damage = 3;
	//ints.knockback = 4;
}

//Notes
// Fix speed to work in isometric scale
// to fix speed change it to hard position value changes
//create attacks somehow still!!!!
//long term add pathing to player!!!!!