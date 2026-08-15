// Player is close enough to use the gate
if (distance_to_object(Obj_Girl) < 40)
{
    // Press J
    if (keyboard_check_pressed(ord("J")) && !opening)
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

    // OUTSIDE
    if (room == Rm_Outside)
    {
        room_goto(Rm_InsideJunkyard)
    }

    // INSIDE JUNKYARD
    else if (room == Rm_InsideJunkyard)
    {
        room_goto(Rm_Outside)
    }
}
