image_alpha -= 0.1
grav += 0.3
y += grav
if (y > ((gml_Script_cameray() + gml_Script_cameraheight()) + 10))
    instance_destroy()
if (global.turntimer < 1)
    instance_destroy()
