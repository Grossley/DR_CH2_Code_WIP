if (!gml_Script_i_ex(stickingobj))
    instance_destroy()
if (!gml_Script_i_ex(stucktoobj))
    instance_destroy()
relx = (stickingobj.x - stucktoobj.x)
rely = (stickingobj.y - stucktoobj.y)
init = 1
