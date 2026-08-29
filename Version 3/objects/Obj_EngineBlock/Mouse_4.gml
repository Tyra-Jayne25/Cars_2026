if (global.engine_tool == "camshaft" && global.engine_stage == 0)
{
    global.engine_stage = 1
    global.engine_tool = "none"
    instance_destroy(Obj_Camshaft)
}

else if (global.engine_tool == "pistons" && global.engine_stage == 1)
{
    global.engine_stage = 2
    global.engine_tool = "none"
    instance_destroy(Obj_Pistons)
}

else if (global.engine_tool == "intake" && global.engine_stage == 2)
{
    global.engine_stage = 3
    global.engine_tool = "none"
    instance_destroy(Obj_IntakeManifolds)
}

else if (global.engine_tool == "exhaust" && global.engine_stage == 3)
{
    global.engine_stage = 4
    global.engine_tool = "none"
    instance_destroy(Obj_ExhaustManifolds)
}