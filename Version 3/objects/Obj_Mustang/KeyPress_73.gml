if (global.restoration_stage == 0)
{
    room_goto(Rm_BodyRestore)
}
else if (global.restoration_stage == 1)
{
    room_goto(Rm_EngineRestore)
}
else if (global.restoration_stage == 2)
{
    room_goto(Rm_BrakeRestore)
}
if (!global.body_painted)
{
    room_goto(Rm_BodyRestore)
}
if (!global.engine_complete)
{
    room_goto(Rm_EngineRestore)
}
else
{
    room_goto(Rm_BrakeRestore)
}