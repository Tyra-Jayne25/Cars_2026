if (global.body_tool == "hood")
{
    if (!global.hood_installed)
    {
        global.hood_installed = true
        global.body_tool = "none"
        instance_destroy(Obj_BodyHood)
    }
}

else if (global.body_tool == "door")
{
    if (global.hood_installed && !global.door_installed)
    {
        global.door_installed = true
        global.body_tool = "none"
        instance_destroy(Obj_BodyDoor)
    }
}

else if (global.body_tool == "paintgun")
{
    if (global.hood_installed &&
        global.door_installed &&
        global.rust_removed >= global.total_rust)
    {
        global.body_painted = true
        global.body_tool = "none"
    }
}
