// Keep the car still until it is restored
image_speed = 0
image_index = 0

// Only allow the car to be selected if it is not already in the garage
if (!in_garage)
{
    // Player must be close to the car
    if (distance_to_object(Obj_Girl) < 50)
    {
        // Press C to move the car
        if (keyboard_check_pressed(ord("C")))
        {
            // Check if Plot 1 exists
            if (instance_exists(Obj_CarPlot1))
            {
                if (!Obj_CarPlot1.occupied)
                {
                    global.selected_car = "Mustang"
                    global.selected_plot = 1
                    global.car_moving = true

                    room_goto(Rm_InsideGarage)
                }
                else if (instance_exists(Obj_CarPlot2))
                {
                    if (!Obj_CarPlot2.occupied)
                    {
                        global.selected_car = "Mustang"
                        global.selected_plot = 2
                        global.car_moving = true

                        room_goto(Rm_InsideGarage)
                    }
                }
            }
        }
    }
}
