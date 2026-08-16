// Make this object stay between rooms
persistent = true


// -------------------------
// GAME VARIABLES
// -------------------------

global.money = 0
global.currentCar = 0
global.playerName = "Player"
global.gameStarted = false


// -------------------------
// CAR TRANSFER VARIABLES
// -------------------------

global.car_moving = false

global.selected_car = ""

global.selected_plot = 0


// -------------------------
// GARAGE CAR PLOTS
// -------------------------

global.plot1_occupied = false
global.plot2_occupied = false

// Only do this when a car has been transferred
if (global.car_moving)
{
    var car_x = 0
    var car_y = 0


    // -------------------------
    // MAKE SURE WE ARE IN GARAGE
    // -------------------------

    if (room == Rm_InsideGarage)
    {
        
        // -------------------------
        // GET PLOT 1 POSITION
        // -------------------------

        if (global.selected_plot == 1)
        {
            car_x = Obj_CarPlot1.x
            car_y = Obj_CarPlot1.y
        }


        // -------------------------
        // GET PLOT 2 POSITION
        // -------------------------

        else if (global.selected_plot == 2)
        {
            car_x = Obj_CarPlot2.x
            car_y = Obj_CarPlot2.y
        }


        // -------------------------
        // CREATE THE SELECTED CAR
        // -------------------------

        if (global.selected_car == "Mustang")
        {
            instance_create_layer(
                car_x,
                car_y,
                "Instances",
                Obj_Mustang
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

        else if (global.selected_car == "Silvia")
        {
            instance_create_layer(
                car_x,
                car_y,
                "Instances",
                Obj_Silvia
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


        // -------------------------
        // TRANSFER COMPLETE
        // -------------------------

        global.car_moving = false
    }
}
