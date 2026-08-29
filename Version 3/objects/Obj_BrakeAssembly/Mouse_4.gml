if (global.brake_tool == "rotor")
{
    if (global.brake_stage == 0)
    {
        global.brake_stage = 1;
        global.brake_tool = "none";

        image_index = 1;

        with (Obj_BrakeRotor)
        {
            instance_destroy();
        }
    }
}

else if (global.brake_tool == "caliper")
{
    if (global.brake_stage == 1)
    {
        global.brake_stage = 2;
        global.brake_tool = "none";

        image_index = 2;

        with (Obj_BrakeCaliper)
        {
            instance_destroy();
        }
    }
}

else if (global.brake_tool == "pad1")
{
    if (global.brake_stage == 2)
    {
        global.brake_stage = 3;
        global.brake_tool = "none";

        image_index = 3;

        with (Obj_BrakePad1)
        {
            instance_destroy();
        }
    }
}

else if (global.brake_tool == "wheel")
{
    if (global.brake_stage == 3)
    {
        global.brake_stage = 4;
        global.brake_tool = "none";

        image_index = 4;

        global.brake_complete = true;

        with (Obj_BrakeWheel)
        {
            instance_destroy();
        }
    }
}