if (global.body_tool == "door")
{
    global.door_installed = true
    global.body_tool = "none"
}

else if (global.body_tool == "hood")
{
    if (global.door_installed)
    {
        global.hood_installed = true
        global.body_tool = "none"
    }
}

else if (global.body_tool == "paintgun")
{
    if (global.door_installed &&
        global.hood_installed &&
        global.rust_removed >= global.total_rust)
    {
        global.body_painted = true
        global.body_tool = "none"
    }
}
