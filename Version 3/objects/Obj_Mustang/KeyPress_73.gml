if (global.restoration_stage == 0)
{
    room_goto(Rm_BodyRestore)
}
else if (global.restoration_stage == 9)
{
    room_goto(Rm_EngineRestore)
}

{
room_goto(Rm_BrakeRestore)
}