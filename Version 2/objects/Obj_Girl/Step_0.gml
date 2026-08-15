moveRight = keyboard_check(vk_right)
moveLeft = keyboard_check(vk_left)
moveUp = keyboard_check(vk_up)
moveDown = keyboard_check(vk_down)

hDirection = moveRight - moveLeft
vDirection = moveDown - moveUp

hSpd = hDirection * Spd
vSpd = vDirection * Spd


// Walking animation

if (hDirection == 0 && vDirection == 0)
{
	sprite_index = Spr_Idle
    image_speed = 1
}

else if (hDirection != 0)
{
    sprite_index = Spr_WalkLeft
    image_xscale = -hDirection
    image_speed = 1
}

if (vDirection == -1)
{
    sprite_index = Spr_WalkUp
    image_speed = 1
}

if (vDirection == 1)
{
    sprite_index = Spr_WalkDown
    image_speed = 1
}


//Movement

x += hSpd
y += vSpd