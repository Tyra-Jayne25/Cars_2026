// Make this object stay between rooms
persistent = true

// Game variables
global.money = 0
global.currentCar = 0
global.playerName = "Player"
global.gameStarted = false

global.car_moving = false
global.selected_car = ""
global.selected_plot = 0


if (global.car_moving)
{
    var car_x
    var car_y

    if (global.selected_plot == 1)
    {
        car_x = Obj_CarPlot1.x
        car_y = Obj_CarPlot1.y
    }
    else if (global.selected_plot == 2)
    {
        car_x = Obj_CarPlot2.x
        car_y = Obj_CarPlot2.y
    }

    if (global.selected_car == "Mustang")
    {
        instance_create_layer(car_x, car_y, "Instances", Obj_Mustang)
    }
    else if (global.selected_car == "Supra")
    {
        instance_create_layer(car_x, car_y, "Instances", Obj_Supra)
    }
    else if (global.selected_car == "Silvia")
    {