scr_itemdesc_b_ch1 = function() // gml_Script_scr_itemdesc_b_ch1
{
    for (i = 0; i < 12; i += 1)
    {
        itemid = global.item[i]
        switch itemid
        {
            case 0:
                itemdescb[i] = "---"
                break
            case 1:
                itemdescb[i] = scr_84_get_lang_string_ch1("scr_itemdesc_b_slash_scr_itemdesc_b_gml_11_0")
                break
            case 2:
                itemdescb[i] = scr_84_get_lang_string_ch1("scr_itemdesc_b_slash_scr_itemdesc_b_gml_14_0")
                break
        }

    }
    return;
}

