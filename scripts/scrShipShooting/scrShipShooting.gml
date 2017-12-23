//spawn bullets when space button is pressed
if (keyboard_check_pressed(vk_space) )
{
	bullet = instance_create_depth(x, y, -10, oBullet);	
	bullet.direction = image_angle;
	bullet.speed = bulletSpd;
	
	//play shooting sound
	audio_play_sound(sndShoot, 1, false);
}
