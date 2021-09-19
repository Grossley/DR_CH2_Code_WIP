con = -1
customcon = 0
krisexplore = 0
punchcon = 0
punchtimer = 0
if (global.chapter != 2 || global.plot < 205 || global.plot >= 210)
    instance_destroy()
else
{
    gml_Script_scr_losechar()
    blackall = gml_Script_scr_marker(-10, -10, 2529)
    blackall.image_xscale = 999
    blackall.image_yscale = 999
    blackall.depth = 100
    blackall.image_blend = c_black
    susienpc = gml_Script_instance_create(289, 95, obj_npc_sign)
    susienpc.sprite_index = spr_susie_walk_up_lw
    susienpc.visible = false
    torielnpc = gml_Script_instance_create(263, 88, obj_npc_sign)
    torielnpc.sprite_index = spr_toriel_ut
    torielnpc.visible = false
}
