if (global.faceaction[argument0.myself] == 4)
{
    var _peeker = obj_sneo_friedpipis
    if (argument0 == 372)
    {
        obj_heroralsei.image_alpha = 0
        _peeker = gml_Script_scr_battle_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralsei_defend_peek)
        _peeker.depth = obj_heroralsei.depth
        _peeker.sourceobject = obj_heroralsei
        _peeker.endanimation = spr_ralsei_redefend
    }
    else if (argument0 == 371)
    {
        obj_herosusie.image_alpha = 0
        _peeker = gml_Script_scr_battle_marker(obj_herosusie.x, obj_herosusie.y, spr_susie_defend_peek)
        _peeker.depth = obj_herosusie.depth
        _peeker.sourceobject = obj_herosusie
    }
    return _peeker;
}
return;
