if (!in_garage)
{
    if (distance_to_object(Obj_Girl) < 50)
    {
        if (keyboard_check_pressed(ord("C")))
        {
            if (!global.car_moving)
            {
                if (!Obj_CarPlot1.occupied)
                {
                    global.car_moving = true
                    global.selected_car = "Mustang"
                    global.selected_plot = 1

                    Obj_CarPlot1.occupied = true

                    room_goto(Rm_InsideGarage)
                }
                else if (!Obj_CarPlot2.occupied)
                {
                    global.car_moving = true
                    global.selected_car = "Mustang"
                    global.selected_plot = 2

                    Obj_CarPlot2.occupied = true
					
					room_goto(Rm_InsideGarage)
                }
            }
        }
    }
}
