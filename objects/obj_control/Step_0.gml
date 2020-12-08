if (!instance_exists(obj_osso))
{
	timer--;
	
	var xx = irandom_range(90, room_width - 90);
	var yy = irandom_range(58, room_height - 58);
	if (timer <= 0)
	{
		instance_create_layer(xx, yy, "Instances", obj_osso);
		timer = room_speed * irandom_range(2, 4);
	}
}