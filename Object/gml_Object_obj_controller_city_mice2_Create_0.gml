depth = 5000
weird = 0
if (gml_Script_scr_sideb_get_phase() == 2)
    weird = 1
inusecount = 0
con = -2
victory = false
noelle = 0
timer = 0
scared = 0
scarecount = 0
endNoelle = 0
walkDist = 0
icon = 0
fadeout = 0
walkpoint = 0
moveforward = 0
inUse = 0
instructionLerp = 0
if (global.flag[368] == 1 || global.plot >= 77)
{
    if (global.flag[915] != 0)
    {
        with (obj_mice2Switch)
        {
            depth = 600000
            gml_Script_scr_createFrozen(0)
        }
        with (obj_rotationController_track)
            gml_Script_scr_createFrozen(1)
        if instance_exists(obj_forcefield)
        {
            with (obj_forcefield)
                instance_destroy()
        }
    }
    instance_destroy()
}
