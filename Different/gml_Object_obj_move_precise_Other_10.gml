if (init == false)
{
    init = true
    if (type == 0)
    {
        movemax = 8
        xx[0] = -12
        xx[1] = -6
        xx[2] = -2
        xx[3] = 4
        xx[4] = 6
        xx[5] = 10
        image[0] = IMAGE_LOGO
        image[2] = IMAGE_LOGO_CENTER
        image[4] = IMAGE_LOGO_CENTER_HEART
        image[6] = spr_cutscene_01_toriel_holding_tin_facepalm
    }
    if (type == 1)
    {
        movemax = 8
        xx[0] = -10
        yy[0] = -3
        xx[1] = 5
        yy[1] = -1
        xx[2] = -3
        yy[2] = 1
        xx[3] = 2
        yy[3] = 3
        xx[4] = -1
        xx[5] = 1
        image[0] = IMAGE_LOGO
        image[2] = IMAGE_LOGO_CENTER
        image[4] = IMAGE_LOGO_CENTER_HEART
        image[6] = spr_cutscene_01_toriel_holding_tin_facepalm
    }
    if (type == 2)
    {
        movemax = 8
        yy[0] = -6
        yy[1] = -2
        yy[2] = 0
        yy[3] = 0
        yy[4] = 1
        yy[5] = 3
        yy[6] = 4
        image[0] = IMAGE_LOGO
        image[2] = IMAGE_LOGO_CENTER
        image[4] = IMAGE_LOGO_CENTER_HEART
        image[6] = spr_cutscene_01_toriel_holding_tin_facepalm
    }
    if i_ex(target)
    {
        target.x += (xx[movecount] * xOrientation)
        target.y += (yy[movecount] * yOrientation)
        if (image[movecount] != -1 && o_boxingcontroller.wireframe_boxing == 0)
            target.image_index = image[movecount]
    }
    movecount++
    moved = 1
}
