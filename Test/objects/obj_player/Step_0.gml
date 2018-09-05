/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D902910
/// @DnDArgument : "code" "//depth$(13_10)depth = -y + jumping;$(13_10)$(13_10)//input from keyboard$(13_10)def_spd = 5;$(13_10)//def_jump = 10;$(13_10)$(13_10)k_up = keyboard_check(ord("W"));$(13_10)k_down = keyboard_check(ord("S"));$(13_10)k_left = keyboard_check(ord("A"));$(13_10)k_right = keyboard_check(ord("D"));$(13_10)k_shift = keyboard_check(vk_shift);$(13_10)//k_space = keyboard_check(vk_space);$(13_10)$(13_10)up = k_up&&!k_down&&!k_left&&!k_right;$(13_10)down = k_down&&!k_up&&!k_left&&!k_right;$(13_10)left = k_left&&!k_up&&!k_down&&!k_right;$(13_10)right = k_right&&!k_up&&!k_left&&!k_down;$(13_10)up_right = k_up&&k_right&&!k_down&&!k_left;$(13_10)up_left = k_up&&k_left&&!k_down&&!k_right;$(13_10)down_left = k_down&&k_left&&!k_up&&!k_right;$(13_10)down_right = k_down&&k_right&&!k_up&&!k_left;$(13_10)$(13_10)//input mouse$(13_10)attack_dir = point_direction(x, y, mouse_x, mouse_y)$(13_10)$(13_10)if (k_shift) spd = def_spd*1.5;$(13_10)else spd = def_spd;$(13_10)$(13_10)/*if (!jumping){$(13_10)	if (k_space) {$(13_10)		jump = def_jump;$(13_10)		jumping = true$(13_10)	}$(13_10)}$(13_10)else if (jumping){$(13_10)	if jump == -(def_jump+1) jumping = false;$(13_10)	else {$(13_10)		y -= jump;$(13_10)		jump -= 1;$(13_10)	}$(13_10)	$(13_10)}*/$(13_10)$(13_10)$(13_10)if(!attacking && hit <= 0){$(13_10)$(13_10)	if(was_moving){$(13_10)		if(last == "up"){$(13_10)			y -= 0.5*deceling;$(13_10)			x += 0;$(13_10)		}$(13_10)		else if(last == "down"){$(13_10)			y += 0.5*deceling;$(13_10)			x += 0;}$(13_10)		else if(last == "left"){$(13_10)			y += 0;$(13_10)			x -= deceling;}$(13_10)		else if(last == "right"){$(13_10)			y += 0;$(13_10)			x += deceling;}$(13_10)		else if(last == "up right"){$(13_10)			y -= 0.5*deceling;$(13_10)			x += deceling;}$(13_10)		else if(last == "up left"){$(13_10)			y -= 0.5*deceling;$(13_10)			x -= deceling;}$(13_10)		else if(last == "down left"){$(13_10)			y += 0.5*deceling;$(13_10)			x -= deceling;}$(13_10)		else if(last == "down right"){$(13_10)			y += 0.5*deceling;$(13_10)			x += deceling;}$(13_10)		if (deceling > 0){$(13_10)			deceling -= 1.5 }$(13_10)		else{$(13_10)			last = "";$(13_10)			was_moving = false;}$(13_10)	}$(13_10)	$(13_10)	else if (mouse_button == mb_left){$(13_10)		//small attack$(13_10)		attacking = true;$(13_10)		attack_type = 4;$(13_10)		attacking_dir = attack_dir;$(13_10)		var ints;$(13_10)		ints = instance_create_depth(x, y, depth, obj_attack);$(13_10)		ints.parent_object = obj_player;$(13_10)		ints.damage = 3;$(13_10)		ints.knockback = 4;$(13_10)	$(13_10)	}$(13_10)	$(13_10)	else if (mouse_button == mb_right){$(13_10)		//large attack$(13_10)		attacking = true;$(13_10)		attack_type = 8;$(13_10)		attacking_dir = attack_dir;$(13_10)		var ints;$(13_10)		ints = instance_create_depth(x, y, depth, obj_attack);$(13_10)		ints.parent_object = obj_player;$(13_10)		ints.damage = 9;$(13_10)		ints.knockback = 6;$(13_10)	}$(13_10)	$(13_10)	else if(up && last !="down"){$(13_10)		y -= 0.5*spd;$(13_10)		movement = true;$(13_10)		last = "up";$(13_10)		direction = 90;$(13_10)	}$(13_10)	else if(down && last !="up"){$(13_10)		y += 0.5*spd;$(13_10)		movement = true;$(13_10)		last = "down";$(13_10)		direction = -90;$(13_10)	}$(13_10)	else if(left && last !="right"){$(13_10)		x -= spd;$(13_10)		movement = true;$(13_10)		last = "left";$(13_10)		direction = 180;$(13_10)	}$(13_10)	else if(right && last !="left"){$(13_10)		x += spd;$(13_10)		movement = true;$(13_10)		last = "right";$(13_10)		direction = 0;$(13_10)	}$(13_10)	else if(up_right && last !="down left"){$(13_10)		x+=spd;$(13_10)		y-=0.5*spd;$(13_10)		movement = true;$(13_10)		last = "up right";$(13_10)		direction = 30;$(13_10)	}$(13_10)	else if(up_left && last != "down right"){$(13_10)		x-=spd;$(13_10)		y-=0.5*spd;$(13_10)		movement = true;$(13_10)		last = "up left"$(13_10)		direction = 150;$(13_10)	}$(13_10)	else if(down_left && last != "up right"){$(13_10)		x-=spd;$(13_10)		y+=0.5*spd;$(13_10)		movement = true;$(13_10)		last = "down left";$(13_10)		direction = -150;$(13_10)	}$(13_10)	else if(down_right && last != "up left"){$(13_10)		x+=spd;$(13_10)		y+=0.5*spd;$(13_10)		movement = true;$(13_10)		last = "down right";$(13_10)		direction = -30;$(13_10)	}$(13_10)	else if(movement){$(13_10)		was_moving = true;$(13_10)		movement = false;$(13_10)		deceling = spd;$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)if (attacking){$(13_10)	if (attack_type <= 0){$(13_10)		instance_destroy(obj_attack)$(13_10)	}$(13_10)	if (attack_type == -3){$(13_10)		attacking = false;$(13_10)	}$(13_10)	attack_type -=1$(13_10)	x += spd*cos(degtorad(attacking_dir))/10;$(13_10)	y -= spd*sin(degtorad(attacking_dir))/10;$(13_10)}$(13_10)$(13_10)if (hit > 0){$(13_10)	hit -= 1$(13_10)}$(13_10)else{$(13_10)	speed = 0;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
//depth
depth = -y + jumping;

//input from keyboard
def_spd = 5;
//def_jump = 10;

k_up = keyboard_check(ord("W"));
k_down = keyboard_check(ord("S"));
k_left = keyboard_check(ord("A"));
k_right = keyboard_check(ord("D"));
k_shift = keyboard_check(vk_shift);
//k_space = keyboard_check(vk_space);

up = k_up&&!k_down&&!k_left&&!k_right;
down = k_down&&!k_up&&!k_left&&!k_right;
left = k_left&&!k_up&&!k_down&&!k_right;
right = k_right&&!k_up&&!k_left&&!k_down;
up_right = k_up&&k_right&&!k_down&&!k_left;
up_left = k_up&&k_left&&!k_down&&!k_right;
down_left = k_down&&k_left&&!k_up&&!k_right;
down_right = k_down&&k_right&&!k_up&&!k_left;

//input mouse
attack_dir = point_direction(x, y, mouse_x, mouse_y)

if (k_shift) spd = def_spd*1.5;
else spd = def_spd;

/*if (!jumping){
	if (k_space) {
		jump = def_jump;
		jumping = true
	}
}
else if (jumping){
	if jump == -(def_jump+1) jumping = false;
	else {
		y -= jump;
		jump -= 1;
	}
	
}*/


if(!attacking && hit <= 0){

	if(was_moving){
		if(last == "up"){
			y -= 0.5*deceling;
			x += 0;
		}
		else if(last == "down"){
			y += 0.5*deceling;
			x += 0;}
		else if(last == "left"){
			y += 0;
			x -= deceling;}
		else if(last == "right"){
			y += 0;
			x += deceling;}
		else if(last == "up right"){
			y -= 0.5*deceling;
			x += deceling;}
		else if(last == "up left"){
			y -= 0.5*deceling;
			x -= deceling;}
		else if(last == "down left"){
			y += 0.5*deceling;
			x -= deceling;}
		else if(last == "down right"){
			y += 0.5*deceling;
			x += deceling;}
		if (deceling > 0){
			deceling -= 1.5 }
		else{
			last = "";
			was_moving = false;}
	}
	
	else if (mouse_button == mb_left){
		//small attack
		attacking = true;
		attack_type = 4;
		attacking_dir = attack_dir;
		var ints;
		ints = instance_create_depth(x, y, depth, obj_attack);
		ints.parent_object = obj_player;
		ints.damage = 3;
		ints.knockback = 4;
	
	}
	
	else if (mouse_button == mb_right){
		//large attack
		attacking = true;
		attack_type = 8;
		attacking_dir = attack_dir;
		var ints;
		ints = instance_create_depth(x, y, depth, obj_attack);
		ints.parent_object = obj_player;
		ints.damage = 9;
		ints.knockback = 6;
	}
	
	else if(up && last !="down"){
		y -= 0.5*spd;
		movement = true;
		last = "up";
		direction = 90;
	}
	else if(down && last !="up"){
		y += 0.5*spd;
		movement = true;
		last = "down";
		direction = -90;
	}
	else if(left && last !="right"){
		x -= spd;
		movement = true;
		last = "left";
		direction = 180;
	}
	else if(right && last !="left"){
		x += spd;
		movement = true;
		last = "right";
		direction = 0;
	}
	else if(up_right && last !="down left"){
		x+=spd;
		y-=0.5*spd;
		movement = true;
		last = "up right";
		direction = 30;
	}
	else if(up_left && last != "down right"){
		x-=spd;
		y-=0.5*spd;
		movement = true;
		last = "up left"
		direction = 150;
	}
	else if(down_left && last != "up right"){
		x-=spd;
		y+=0.5*spd;
		movement = true;
		last = "down left";
		direction = -150;
	}
	else if(down_right && last != "up left"){
		x+=spd;
		y+=0.5*spd;
		movement = true;
		last = "down right";
		direction = -30;
	}
	else if(movement){
		was_moving = true;
		movement = false;
		deceling = spd;
	}

}

if (attacking){
	if (attack_type <= 0){
		instance_destroy(obj_attack)
	}
	if (attack_type == -3){
		attacking = false;
	}
	attack_type -=1
	x += spd*cos(degtorad(attacking_dir))/10;
	y -= spd*sin(degtorad(attacking_dir))/10;
}

if (hit > 0){
	hit -= 1
}
else{
	speed = 0;
}




/**/