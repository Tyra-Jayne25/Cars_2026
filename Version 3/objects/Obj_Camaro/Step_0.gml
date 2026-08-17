// Keep the car still
image_speed = 0
image_index = 0

// CAMARO - PRESS C TO MOVE TO GARAGE

if (room == Rm_InsideJunkyard)
{
    if (distance_to_object(Obj_Girl) < 50)
    {
		
        if (keyboard_check_pressed(ord("C")))
		
		{
			// Tell the game which car was selected
			global.selected_car = "Camaro"
			
			// Tell the game which plot to use
			global.selected_plot = 1
			
			// Tell the game the car is being transferred
			global.car_moving = true
			
			// Remove this Camaro from the junkyard
			instance_destroy()
}
		
        {
            // CHECK WHICH GARAGE PLOT IS FREE

            if (!global.plot1_occupied)
            {
                global.selected_car = "Camaro"
                global.selected_plot = 1
                global.plot1_occupied = true
                global.car_moving = true

                room_goto(Rm_InsideGarage)
            }

            else if (!global.plot2_occupied)
            {
                global.selected_car = "Camaro"
                global.selected_plot = 2
                global.plot2_occupied = true
                global.car_moving = true

                room_goto(Rm_InsideGarage)
            }
        }
    }
}
