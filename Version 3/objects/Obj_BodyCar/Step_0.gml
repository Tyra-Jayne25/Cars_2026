if (global.body_painted)
{
    image_index = 3
}
else if (global.hood_installed && global.door_installed)
{
    image_index = 2
}
else if (global.hood_installed)
{
    image_index = 1
}
else
{
    image_index = 0
}
