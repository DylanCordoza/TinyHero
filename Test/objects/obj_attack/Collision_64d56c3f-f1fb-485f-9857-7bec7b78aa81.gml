/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DD98C1D
/// @DnDArgument : "var" "parent_object"
/// @DnDArgument : "value" "obj_player"
if(parent_object == obj_player)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F285E10
	/// @DnDInput : 4
	/// @DnDParent : 1DD98C1D
	/// @DnDArgument : "expr" "-damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "direction"
	/// @DnDArgument : "expr_2" "damage"
	/// @DnDArgument : "expr_3" "knockback"
	/// @DnDArgument : "var" "obj_enemy.hp"
	/// @DnDArgument : "var_1" "obj_enemy.direction"
	/// @DnDArgument : "var_2" "obj_enemy.hit"
	/// @DnDArgument : "var_3" "obj_enemy.speed"
	obj_enemy.hp += -damage;
	obj_enemy.direction = direction;
	obj_enemy.hit = damage;
	obj_enemy.speed = knockback;
}