/// @description Ship Movement

// Rotate ship counter clockwise
if (keyboard_check(vk_left) )
{
	image_angle = image_angle + shipRotSpd;
}

//Rotate ship counter clockwise
if (keyboard_check(vk_right) )
{
	image_angle = image_angle - shipRotSpd;
}	


//Add the current acceleration to the ship 
if (keyboard_check(vk_up) )
{
	motion_add(image_angle, shipAccel);
}

//Make ship wrap back to other side when leaving screen
move_wrap(true, true, 20);

//Friction slows ship down
speed = speed - .1;

//Clamp ships min and max speed
speed = clamp(speed, 0, shipMaxSpeed);