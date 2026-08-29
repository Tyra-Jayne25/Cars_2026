if (global.restoration_stage == 0)
{
    room_goto(Rm_BodyRestore)
}
else if (global.restoration_stage == 1)
{
    room_goto(Rm_EngineRestore)
}
