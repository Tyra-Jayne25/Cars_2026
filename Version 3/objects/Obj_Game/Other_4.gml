// Only run this when entering the garage
if (room == Rm_InsideGarage)
{
    // Check if a car has been selected
    if (global.selected_car != noone)
    {
        // Find the two car plots in the garage
        var plot1 = instance_find(Obj_carplot1, 0)
        var plot2 = instance_find(Obj_carplot2, 0)

        // Put selected car on Plot 1
        if (global.selected_plot == 1 && plot1 != noone)
        {
            instance_create_layer(
                plot1.x,
                plot1.y,
                "Instances",
                global.selected_car
            )

            global.plot1_occupied = true
        }

        // Put selected car on Plot 2
        else if (global.selected_plot == 2 && plot2 != noone)
        {
            instance_create_layer(
                plot2.x,
                plot2.y,
                "Instances",
                global.selected_car
            )

            global.plot2_occupied = true
        }

        // Clear the selection after placing the car
        global.selected_car = noone
        global.selected_plot = 0
    }
}