global.body_tool = "none"

global.door_installed = false
global.hood_installed = false

global.rust_removed = 0
global.total_rust = 5

global.body_painted = false


if (!variable_global_exists("restoration_stage"))
{
    global.restoration_stage = 0
}

if (!variable_global_exists("door_installed"))
{
    global.door_installed = false
}

if (!variable_global_exists("hood_installed"))
{
    global.hood_installed = false
}

if (!variable_global_exists("body_painted"))
{
    global.body_painted = false
}