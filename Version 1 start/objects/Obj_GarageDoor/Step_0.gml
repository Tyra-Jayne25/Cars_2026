// Player is close enough to use the door
if (distance_to_object(Obj_Girl) < 40)
{
    // Press E
    if (keyboard_check_pressed(ord("E")) && !opening)
    {
        opening = true
        image_speed = 0.3
    }
}

// When the animation finishes
if (opening && image_index >= image_number - 1)
{
    image_speed = 0
    image_index = image_number - 1

    // OUTSIDE GARAGE
    if (room == Rm_Outside)
    {
        room_goto(Rm_InsideGarage)
    }

    // INSIDE GARAGE
    else if (room == Rm_InsideGarage)
    {
        room_goto(Rm_Outside)
    }
}