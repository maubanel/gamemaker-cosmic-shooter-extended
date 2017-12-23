/// @description Destroy bullet

//destroy bullet
with (other) // destroys bullet
{
	instance_destroy();	
}
// Make sure there still is a player in the room.
// If we destroy the target before the alarm is set once the player is killed the game
// will never reset.

//play sound when target is hit with bullet
if (instance_exists(oShip) )
{
	instance_destroy();
	audio_play_sound(sndHit, 1, false);
}

//If the number of targets gets less than 2 spawn another bullet offscreen
if (instance_number(oTarget) <= 1)
{
	targetX = -64; //temporarily create new variables
	targetY = -64;
	
	vertOffScreen = random(2); //roll dice. Above one means horizontally off screen, beow is vertical
	if (vertOffScreen > 1) //rolls ver
	{
		targetX = choose(-128, room_width + 128); //off screen either on the left or right hand side
		targetY = random(room_height); //vertical random offset
	}
	else
	{
		targetX = random(room_width);  //horizontal random offset
		targetY = choose(-128, room_height + 128); //off screen either on the top or bottom
	}
	instance_create_depth(targetX, targetY, 0, oTarget); //spawn new rock off screen	
}
