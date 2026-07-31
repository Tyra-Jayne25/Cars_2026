moveRight=keyboard_check(vk_right)
moveLeft=keyboard_check(vk_left)
moveUp=keyboard_check(vk_up)
moveDown=keyboard_check(vk_down)

hDirection=moveRight-moveLeft
vDirection=moveDown=moveUp

hSpd=hDirection*Spd
vSpd=vDirection*Spd

if hDirection=0 and vDirection=0
{
	sprite_index=Spr_Idle
	image_speed = 1
}

else if hDirection!=0
{
	sprite_index=Spr_WalkLeft
	image_xscale = -hDirection
}

if vDirection=-1
{
	sprite_index=Spr_WalkUp
	image_speed = 1
}

if vDirection=1
{
	sprite_index=Spr_WalkDown
	image_speed = 1
}

x=x+hSpd
y=y+vSpd