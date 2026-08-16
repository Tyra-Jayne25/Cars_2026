// CAR TRANSFER INTO GARAGE

if (global.car_moving)
{
    // Only do this when entering the garage
    if (room == Rm_InsideGarage)
    {

        // FIND THE ACTUAL PLOT INSTANCES
        var plot1 = instance_find(Obj_carplot1, 0)
        var plot2 = instance_find(Obj_carplot2, 0)
		
        // CREATE THE SELECTED CAR
        if (global.selected_plot == 1)
        {
            if (instance_exists(plot1))
            {
                if (global.selected_car == "Mustang")
                {
                    instance_create_layer(
                        plot1.x,
                        plot1.y,
                        "Instances",
                        Obj_Mustang
                    )
                }

                else if (global.selected_car == "Silvia")
                {
                    instance_create_layer(
                        plot1.x,
                        plot1.y,
                        "Instances",
                        Obj_Silvia
                    )
                }

                else if (global.selected_car == "Supra")
                {
                    instance_create_layer(
                        plot1.x,
                        plot1.y,
                        "Instances",
                        Obj_Supra
                    )
                }

                else if (global.selected_car == "Camaro")
                {
                    instance_create_layer(
                        plot1.x,
                        plot1.y,
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
                        plot2.x,
                        plot2.y,
                        "Instances",
                        Obj_Mustang
                    )
                }

                else if (global.selected_car == "Silvia")
                {
                    instance_create_layer(
                        plot2.x,
                        plot2.y,
                        "Instances",
                        Obj_Silvia
                    )
                }

                else if (global.selected_car == "Supra")
                {
                    instance_create_layer(
                        plot2.x,
                        plot2.y,
                        "Instances",
                        Obj_Supra
                    )
                }

                else if (global.selected_car == "Camaro")
                {
                    instance_create_layer(
                        plot2.x,
                        plot2.y,
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
