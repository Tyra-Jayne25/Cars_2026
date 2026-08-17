// CAR TRANSFER INTO GARAGE
if (global.car_moving)
{
    // Only do this when entering the garage
    if (room == Rm_InsideGarage)
    {
        // Find the actual plot objects
        var plot1 = instance_find(Obj_carplot1, 0)
        var plot2 = instance_find(Obj_carplot2, 0)

        // Variables for the car's final position
        var car_x = 0
        var car_y = 0


        // GET THE CENTRE OF THE SELECTED PLOT
        if (global.selected_plot == 1)
        {
            if (plot1 != noone)
            {
                car_x = plot1.x + (plot1.sprite_width / 2)
                car_y = plot1.y + (plot1.sprite_height / 2)
            }
        }

        else if (global.selected_plot == 2)
        {
            if (plot2 != noone)
            {
                car_x = plot2.x + (plot2.sprite_width / 2)
                car_y = plot2.y + (plot2.sprite_height / 2)
            }
        }

        // CREATE THE SELECTED CAR
        if (global.selected_car == "Mustang")
        {
            instance_create_layer(
                car_x,
                car_y,
                "Cars",
                Obj_Mustang
            )
        }

        else if (global.selected_car == "Silvia")
        {
            instance_create_layer(
                car_x,
                car_y,
                "Cars",
                Obj_Silvia
            )
        }

        else if (global.selected_car == "Supra")
        {
            instance_create_layer(
                car_x,
                car_y,
                "Cars",
                Obj_Supra
            )
        }

        else if (global.selected_car == "Camaro")
        {
            instance_create_layer(
                car_x,
                car_y,
                "Cars",
                Obj_Camaro
            )
        }


        // ============================================
        // TRANSFER FINISHED
        // ============================================

        global.car_moving = false
        global.selected_car = ""
    }
}