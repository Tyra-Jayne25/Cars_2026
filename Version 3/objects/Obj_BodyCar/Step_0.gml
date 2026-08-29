if (!global.door_installed && !global.hood_installed)
{
    Obj_BodyCar.image_index = 0
}

if (global.door_installed && !global.hood_installed)
{
    Obj_BodyCar.image_index = 1
}

if (!global.door_installed && global.hood_installed)
{
    Obj_BodyCar.image_index = 2
}

if (global.door_installed && global.hood_installed)
{
    Obj_BodyCar.image_index = 3
}

if (global.body_painted)
{
    image_index = 3
}
else if (global.hood_installed)
{
    image_index = 1
}
else if (global.door_installed)
{
    image_index = 2
}
else
{
    image_index = 0
}
