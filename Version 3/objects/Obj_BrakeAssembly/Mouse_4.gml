if (global.brake_tool == "rotor")
{
    if (global.brake_stage == 1)
    {
        global.brake_stage = 2
        global.brake_tool = "none"

        image_index = global.brake_stage

        with (Obj_BrakeRotor)
        {
            instance_destroy()
        }
    }
}

else if (global.brake_tool == "caliper")
{
    if (global.brake_stage == 2)
    {
        global.brake_stage = 3
        global.brake_tool = "none"

        image_index = global.brake_stage

        with (Obj_BrakeCaliper)
        {
            instance_destroy()
        }
    }
}

else if (global.brake_tool == "pad1")
{
    if (global.brake_stage == 3)
    {
        global.brake_stage = 4
        global.brake_tool = "none"

        image_index = global.brake_stage

        with (Obj_BrakePad1)
        {
            instance_destroy()
        }
    }
}

else if (global.brake_tool == "wheel")
{
    if (global.brake_stage == 4)
    {
        global.brake_stage = 5
        global.brake_tool = "none"
        global.brake_complete = true

        image_index = global.brake_stag

        with (Obj_BrakeWheel)
        {
            instance_destroy()
        }
    }
}