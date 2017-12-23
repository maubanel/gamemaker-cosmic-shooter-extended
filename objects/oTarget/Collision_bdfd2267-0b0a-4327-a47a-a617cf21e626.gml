/// @description destroy ship restart game with alarm

with (other) //destroys the object oTarget is colliding with
{
	instance_destroy();
}

alarm[0] = 15;

//play sound when target is ship is hit with target
audio_play_sound(sndHit, 1, false);

