/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D902910
/// @DnDArgument : "code" "//input from keyboard$(13_10)spd = 3;$(13_10)$(13_10)$(13_10)k_up = keyboard_check(ord("W"));$(13_10)k_down = keyboard_check(ord("S"));$(13_10)k_left = keyboard_check(ord("A"));$(13_10)k_right = keyboard_check(ord("D"));$(13_10)$(13_10)up = k_up&&!k_down&&!k_left&&!k_right;$(13_10)down = k_down&&!k_up&&!k_left&&!k_right;$(13_10)left = k_left&&!k_up&&!k_down&&!k_right;$(13_10)right = k_right&&!k_up&&!k_left&&!k_down;$(13_10)up_right = k_up&&k_right&&!k_down&&!k_left;$(13_10)up_left = k_up&&k_left&&!k_down&&!k_right;$(13_10)down_left = k_down&&k_left&&!k_up&&!k_right;$(13_10)down_right = k_down&&k_right&&!k_up&&!k_left;$(13_10)$(13_10)$(13_10)$(13_10)if(up){$(13_10)	y -= spd;$(13_10)	movement = true;$(13_10)	last = "up";}$(13_10)else if(down){$(13_10)	y += spd;$(13_10)	movement = true;$(13_10)	last = "down";}$(13_10)else if(left){$(13_10)	x -= spd;$(13_10)	movement = true;$(13_10)	last = "left";}$(13_10)else if(right){$(13_10)	x += spd;$(13_10)	movement = true;$(13_10)	last = "right";}$(13_10)else if(up_right){$(13_10)	x+=spd;$(13_10)	y-=spd;$(13_10)	movement = true;$(13_10)	last = "up right";$(13_10)}$(13_10)else if(up_left){$(13_10)	x-=spd;$(13_10)	y-=spd;$(13_10)	movement = true;$(13_10)	last = "up left";$(13_10)}$(13_10)else if(down_left){$(13_10)	x-=spd;$(13_10)	y+=spd;$(13_10)	movement = true;$(13_10)	last = "down left";$(13_10)}$(13_10)else if(down_right){$(13_10)	x+=spd;$(13_10)	y+=spd;$(13_10)	movement = true;$(13_10)	last = "down right";$(13_10)}$(13_10)else if(movement){$(13_10)	was_moving = true;$(13_10)	movement = false;$(13_10)}$(13_10)$(13_10)//deceleration$(13_10)$(13_10)if(was_moving){$(13_10)	if(last == "up"){$(13_10)		start_y = -spd;$(13_10)		start_x = 0;$(13_10)	}$(13_10)	else if(last == "down"){}$(13_10)	else if(last == "left"){}$(13_10)	else if(last == "right"){}$(13_10)	else if(last == "up right"){}$(13_10)	else if(last == "up left"){}$(13_10)	else if(last == "down left"){}$(13_10)	else if(last == "down right"){}$(13_10)	for(i = 3; i = 0; i--){$(13_10)		;$(13_10)	}$(13_10)	last = "";$(13_10)}"
//input from keyboard
spd = 3;


k_up = keyboard_check(ord("W"));
k_down = keyboard_check(ord("S"));
k_left = keyboard_check(ord("A"));
k_right = keyboard_check(ord("D"));

up = k_up&&!k_down&&!k_left&&!k_right;
down = k_down&&!k_up&&!k_left&&!k_right;
left = k_left&&!k_up&&!k_down&&!k_right;
right = k_right&&!k_up&&!k_left&&!k_down;
up_right = k_up&&k_right&&!k_down&&!k_left;
up_left = k_up&&k_left&&!k_down&&!k_right;
down_left = k_down&&k_left&&!k_up&&!k_right;
down_right = k_down&&k_right&&!k_up&&!k_left;



if(up){
	y -= spd;
	movement = true;
	last = "up";}
else if(down){
	y += spd;
	movement = true;
	last = "down";}
else if(left){
	x -= spd;
	movement = true;
	last = "left";}
else if(right){
	x += spd;
	movement = true;
	last = "right";}
else if(up_right){
	x+=spd;
	y-=spd;
	movement = true;
	last = "up right";
}
else if(up_left){
	x-=spd;
	y-=spd;
	movement = true;
	last = "up left";
}
else if(down_left){
	x-=spd;
	y+=spd;
	movement = true;
	last = "down left";
}
else if(down_right){
	x+=spd;
	y+=spd;
	movement = true;
	last = "down right";
}
else if(movement){
	was_moving = true;
	movement = false;
}

//deceleration

if(was_moving){
	if(last == "up"){
		start_y = -spd;
		start_x = 0;
	}
	else if(last == "down"){}
	else if(last == "left"){}
	else if(last == "right"){}
	else if(last == "up right"){}
	else if(last == "up left"){}
	else if(last == "down left"){}
	else if(last == "down right"){}
	for(i = 3; i = 0; i--){
		;
	}
	last = "";
}