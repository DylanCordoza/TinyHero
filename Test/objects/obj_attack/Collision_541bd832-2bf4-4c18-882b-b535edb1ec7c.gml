/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07185D46
/// @DnDArgument : "var" "parent_object"
/// @DnDArgument : "value" "obj_enemy"
if(parent_object == obj_enemy)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C9A0DE0
	/// @DnDInput : 4
	/// @DnDParent : 07185D46
	/// @DnDArgument : "expr" "-damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "direction"
	/// @DnDArgument : "expr_2" "damage"
	/// @DnDArgument : "expr_3" "knockback"
	/// @DnDArgument : "var" "obj_player.hp"
	/// @DnDArgument : "var_1" "obj_player.direction"
	/// @DnDArgument : "var_2" "obj_player.hit"
	/// @DnDArgument : "var_3" "obj_player.speed"
	obj_player.hp += -damage;
	obj_player.direction = direction;
	obj_player.hit = damage;
	obj_player.speed = knockback;
}