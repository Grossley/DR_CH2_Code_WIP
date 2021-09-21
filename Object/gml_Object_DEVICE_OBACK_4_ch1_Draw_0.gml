if (siner > 2)
{
    gml_Script_draw_background_ext_ch1(IMAGE_DEPTH_ch1, 160, 120, (1 + xstretch), (1 + ystretch), 0, image_blend, (((0.2 + alpha) - o_insurance) + b_insurance))
    gml_Script_draw_background_ext_ch1(IMAGE_DEPTH_ch1, 160, 120, (-1 - xstretch), (1 + ystretch), 0, image_blend, (((0.2 + alpha) - o_insurance) + b_insurance))
    gml_Script_draw_background_ext_ch1(IMAGE_DEPTH_ch1, 160, 120, (-1 - xstretch), (-1 - ystretch), 0, image_blend, (((0.2 + alpha) - o_insurance) + b_insurance))
    gml_Script_draw_background_ext_ch1(IMAGE_DEPTH_ch1, 160, 120, (1 + xstretch), (-1 - ystretch), 0, image_blend, (((0.2 + alpha) - o_insurance) + b_insurance))
}
