if (global.engine_stage >= 4)
{
    global.restoration_stage = 2
    room_goto(Rm_InsideGarage)
}

global.engine_complete = true
room_goto(Rm_InsideGarage)
{
    room_goto(Rm_BrakeRestore)
}