var _forcefield = instance_nearest((x - 160), (y + 160), obj_forcefield)
if (!gml_Script_i_ex(_forcefield))
    return;
with (_forcefield)
{
    stayVisible = 0
    y -= 160
    if gml_Script_i_ex(solid1)
        solid1.y -= 160
}
