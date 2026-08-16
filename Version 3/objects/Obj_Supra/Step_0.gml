// Keep the car still
image_speed = 0
image_index = 0


// Only allow the player to select
// the car while it is in the junkyard
if (!in_garage)
{
    // Check if the player is close enough
    if (distance_to_object(Obj_Girl) < 50)
    {
        // Press C to move the car
        if (keyboard_check_pressed(ord("S")))
        {
            // Make sure another car
            // isn't currently being moved
            if (!global.car_moving)
            {
                // -----------------------------
                // TRY CAR PLOT 1
                // -----------------------------

                if (!global.plot1_occupied)
                {
                    global.selected_car = "Supra"
                    global.selected_plot = 1
                    global.car_moving = true

                    global.plot1_occupied = true

                    room_goto(Rm_InsideGarage)
                }

                // -----------------------------
                // TRY CAR PLOT 2
                // -----------------------------

                else if (!global.plot2_occupied)
                
                    global.selected_car = "Supra"
                    global.selected_plot = 2
                    global.car_moving = true

                    global.plot2_occupied = true

                    room_goto(Rm_InsideGarage)
                }

                // -----------------------------
                // BOTH PLOTS ARE FULL
                // -----------------------------

                else
                {
                    // Nothing happens
                }
            }
        }
    }
