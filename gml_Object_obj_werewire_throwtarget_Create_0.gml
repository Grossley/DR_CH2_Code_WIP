image_xscale = 2
image_yscale = 2
image_speed = 0.2
good = 1
offing = 0
con = 1
xPos = x
yPos = y
y -= 120
moveY = 0
moveAmount = 0
collided = 0
timer = 0
t = random(360)
yy = y
increment = random_range(3.8, 4.2)
amplitude = 75
t = ((t + increment) % 360)
shift = (amplitude * dsin(t))
y = (yy + shift)
t = ((t + increment) % 360)
shift = (amplitude * dsin(t))
y = (yy + shift)
x = ((xstart - (((y - gml_Script_cameray()) + 0.1) / 3.375)) + 18)
