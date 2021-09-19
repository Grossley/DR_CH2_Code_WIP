con = -1
customcon = 0
queen_beam = noone
if (global.entrance == 24 && global.plot >= 90)
    layer_set_visible(layer_get_id("BLOCKING_CARS"), 1)
else
    layer_set_visible(layer_get_id("BLOCKING_CARS"), 0)
var traffic_switch = gml_Script_instance_create(3103, 250, obj_npc_sign)
traffic_switch.sprite_index = spr_trafficswitch
traffic_switch.image_index = (global.plot >= 90 ? 0 : 1)
var _temp_local_var_2 = traffic_switch
gml_Script_scr_depth()
