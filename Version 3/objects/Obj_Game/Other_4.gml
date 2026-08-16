// CAR TRANSFER INTO GARAGE

if (global.car_moving)
{
    // Only do this when entering the garage
    if (room == Rm_InsideGarage)
    {

        //PLOT POSITIONS
		
        var car_x = 0
        var car_y = 0

        // PLOT 1
        if (global.selected_plot == 1)
        {
            car_x = 288
            car_y = -133
        }

        // PLOT 2
        else if (global.selected_plot == 2)
        {
            car_x = 80
            car_y = -133
        }
		
        // CREATE THE SELECTED CAR
        if (global.selected_plot == 1)
        {
            if (instance_exists(plot1))
            {
                if (global.selected_car == "Mustang")
                {
                    instance_create_layer(
                         car_x,
						 car_y,
                        "Instances",
                        Obj_Mustang
                    )
                }

                else if (global.selected_car == "Silvia")
                {
                    instance_create_layer(
                        car_x,
						car_y,
                        "Instances",
                        Obj_Silvia
                    )
                }

                else if (global.selected_car == "Supra")
                {
                    instance_create_layer(
                        car_x,
						car_y,
                        "Instances",
                        Obj_Supra
                    )
                }

                else if (global.selected_car == "Camaro")
                {
                    instance_create_layer(
                        car_x,
						car_y,
                        "Instances",
                        Obj_Camaro
                    )
                }
            }
        }

        // PLOT 2
        else if (global.selected_plot == 2)
        {
            if (instance_exists(plot2))
            {
                if (global.selected_car == "Mustang")
                {
                    instance_create_layer(
                        car_x,
						car_y,
                        "Instances",
                        Obj_Mustang
                    )
                }

                else if (global.selected_car == "Silvia")
                {
                    instance_create_layer(
                        car_x,
						car_y,
                        "Instances",
                        Obj_Silvia
                    )
                }

                else if (global.selected_car == "Supra")
                {
                    instance_create_layer(
                        car_x,
						car_y,
                        "Instances",
                        Obj_Supra
                    )
                }

                else if (global.selected_car == "Camaro")
                {
                    instance_create_layer(
                        car_x,
						car_y,
                        "Instances",
                        Obj_Camaro
                    )
                }
            }
        }

        // TRANSFER FINISHED
		global.car_moving = false
        global.selected_car = ""
    }
}
