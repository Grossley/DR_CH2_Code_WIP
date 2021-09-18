var _locale = 
if (os_type == os_switch)
    var _lang = gml_Script_substr(switch_language_get_desired_language(), 1, 2)
else
    _lang = (gml_Script_substr(_locale, 1, 2) != "ja" ? "en" : "ja")
global.lang = _lang
if "true_config.ini"
{
    "true_config.ini"
    global.lang = ini_read_string("LANG", "LANG", _lang)
    // WARNING: Popz'd an empty stack.
}
if (!"lang_loaded")
    global.lang_loaded = ""
if (global.lang_loaded != global.lang)
{
    global.lang_loaded = global.lang
    if "lang_map"
    {
        global.lang_map
        global.font_map
        global.chemg_sprite_map
        global.chemg_sound_map
    }
    global.lang_map = 
    global.font_map = 
    global.chemg_sprite_map = 
    global.chemg_sound_map = 
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    global.chemg_last_get_font = ""
    if (global.lang == "ja")
    {
        var fm = global.font_map
        ds_map_add(fm, "main", 10)
        ds_map_add(fm, "mainbig", 8)
        ds_map_add(fm, "tinynoelle", 12)
        ds_map_add(fm, "dotumche", 7)
        ds_map_add(fm, "comicsans", 6)
        ds_map_add(fm, "small", 9)
        var sm = global.chemg_sprite_map
        ds_map_add(sm, "spr_bnamekris", 4046)
        ds_map_add(sm, "spr_bnameralsei", 4047)
        ds_map_add(sm, "spr_bnamesusie", 4048)
        ds_map_add(sm, "spr_btact", 4049)
        ds_map_add(sm, "spr_btdefend", 4050)
        ds_map_add(sm, "spr_btfight", 4051)
        ds_map_add(sm, "spr_btitem", 4052)
        ds_map_add(sm, "spr_btspare", 4054)
        ds_map_add(sm, "spr_bttech", 4053)
        ds_map_add(sm, "spr_darkmenudesc", 4188)
        ds_map_add(sm, "spr_dmenu_captions", 4166)
        ds_map_add(sm, "spr_quitmessage", 4381)
        ds_map_add(sm, "spr_thrashbody_b", 4095)
        ds_map_add(sm, "spr_thrashfoot_b", 4093)
        ds_map_add(sm, "spr_thrashlogo", 4099)
        ds_map_add(sm, "spr_thrashstats", 4109)
        ds_map_add(sm, "spr_fieldmuslogo", 4230)
        var sndm = global.chemg_sound_map
        ds_map_add(sndm, "snd_joker_anything", 473)
        ds_map_add(sndm, "snd_joker_chaos", 474)
        ds_map_add(sndm, "snd_joker_metamorphosis", 475)
        ds_map_add(sndm, "snd_joker_neochaos", 476)
    }
    else
    {
        fm = global.font_map
        ds_map_add(fm, "main", 3)
        ds_map_add(fm, "mainbig", 2)
        ds_map_add(fm, "tinynoelle", 0)
        ds_map_add(fm, "dotumche", 1)
        ds_map_add(fm, "comicsans", 4)
        ds_map_add(fm, "small", 5)
        sm = global.chemg_sprite_map
        ds_map_add(sm, "spr_bnamekris", 4025)
        ds_map_add(sm, "spr_bnameralsei", 4026)
        ds_map_add(sm, "spr_bnamesusie", 4027)
        ds_map_add(sm, "spr_btact", 4028)
        ds_map_add(sm, "spr_btdefend", 4030)
        ds_map_add(sm, "spr_btfight", 4031)
        ds_map_add(sm, "spr_btitem", 4035)
        ds_map_add(sm, "spr_btspare", 4032)
        ds_map_add(sm, "spr_bttech", 4037)
        ds_map_add(sm, "spr_darkmenudesc", 4177)
        ds_map_add(sm, "spr_dmenu_captions", 4163)
        ds_map_add(sm, "spr_quitmessage", 4283)
        ds_map_add(sm, "spr_thrashbody_b", 4094)
        ds_map_add(sm, "spr_thrashfoot_b", 4092)
        ds_map_add(sm, "spr_thrashlogo", 4098)
        ds_map_add(sm, "spr_thrashstats", 4101)
        ds_map_add(sm, "spr_fieldmuslogo", 4229)
        sndm = global.chemg_sound_map
        ds_map_add(sndm, "snd_joker_anything", 468)
        ds_map_add(sndm, "snd_joker_chaos", 465)
        ds_map_add(sndm, "snd_joker_metamorphosis", 470)
        ds_map_add(sndm, "snd_joker_neochaos", 471)
    }
}
return;
