ubuffer = 1
dbuffer = 1
rbuffer = 1
lbuffer = 1
buffer1 = 1
buffer2 = 1
buffer3 = 1
scrolltimer = 0
scrollrepeat = 4
dheld = false
uheld = false
rheld = false
lheld = false
menu = 0
init = false
heartX = 0
heartY = 0
wrap = 0
menuMax = 4
edgedebug = false
siner = 0
type = 1
reminteract = global.interact
menuSprite = spr_heart
display_buttons = 0
for (i = 0; i < menuMax; i++)
{
    menuCoord[i] = 0
    menuHeight[i] = 6
    menuWidth[i] = 4
    menuNext[i] = (i + 1)
    menuPrevious[i] = (i - 1)
    menuMinimumID[i] = 0
    menuMaximumID[i] = 100
    menuVEdgeBehavior[i] = 0
    menuHEdgeBehavior[i] = 0
    menuPageSize[i] = 24
    menuScrollCurrent[i] = 0
    menuScrollAdd[i] = 0
    if (menuHEdgeBehavior[i] == 2)
        menuScrollAdd[i] = menuPageSize[i]
    if (menuVEdgeBehavior[i] == 2)
        menuScrollAdd[i] = menuWidth[i]
    menuVHeld[i] = 8
    menuHHeld[i] = 8
    menuDisplayCondition[i] = 2
    menuTextColor[i] = 16777215
    menuTextColorUnselectable[i] = 8421504
    menuTextColorHover[i] = 65535
    menuTextColorInactive[i] = 8421504
    menuTextColorSelected[i] = 65535
    menuTextFont[i] = scr_84_get_font("mainbig")
    menuTextScaleType[i] = 0
    menuTextXScale[i] = 1
    menuTextYScale[i] = 1
    menuTextWidth[i] = 100
    menuTextHeight[i] = 0
    menuOptionX[i] = 40
    menuOptionY[i] = 40
    menuSpacingOverride[i] = 0
    menuSpacingX[i] = 100
    menuSpacingY[i] = 40
    menuTextOffsetX[i] = 30
    menuTextOffsetY[i] = 0
    menuX[i] = __view_get((0 << 0), 0)
    menuY[i] = __view_get((1 << 0), 0)
    menuBoxDraw[i] = 1
    menuBoxDrawX1[i] = (menuX[i] - 20)
    menuBoxDrawX2[i] = ((menuX[i] + (menuSpacingX[i] * menuWidth[i])) + 20)
    menuBoxDrawY1[i] = (menuY[i] - 10)
    menuBoxDrawY2[i] = ((menuY[i] + (menuSpacingY[i] * menuHeight[i])) + 10)
    wrap = 0
    vwrap = 0
    for (j = 0; j <= menuMaximumID[i]; j++)
    {
        optionID[i][j] = j
        optionX[i][j] = (menuX[i] + (wrap * menuSpacingX[i]))
        optionY[i][j] = (menuY[i] + (vwrap * menuSpacingY[i]))
        optionText[i][j] = "---"
        optionSelectable[i][j] = 0
        optionSelected[i][j] = 0
        optionEffect[i][j] = 0
        wrap++
        if (wrap >= menuWidth[i])
        {
            wrap = 0
            vwrap++
        }
        optionSelectable[i][j] = choose(0, 1)
        optionText[i][j] = ((choose("A", "B", "C", "D") + choose("A", "E", "I")) + choose("T", "R", "S", "Q"))
        optionCommentA[i][j] = " "
        optionCommentB[i][j] = " "
        optionCommentC[i][j] = " "
        optionCommentAColor[i][j] = 8421504
        optionCommentBColor[i][j] = 8421504
        optionCommentCColor[i][j] = 8421504
        optionCommentAWidth[i][j] = 0
        optionCommentBWidth[i][j] = 0
        optionCommentCWidth[i][j] = 0
        optionCommentAHeight[i][j] = 0
        optionCommentBHeight[i][j] = 0
        optionCommentCHeight[i][j] = 0
        optionCommentAXOffset[i][j] = 100
        optionCommentBXOffset[i][j] = 100
        optionCommentCXOffset[i][j] = 100
        optionCommentAYOffset[i][j] = 100
        optionCommentBYOffset[i][j] = 100
        optionCommentCYOffset[i][j] = 100
        optionTopComment[i][j] = " "
    }
    menuHeaderTextAmount[i] = 3
    for (j = 0; j < menuHeaderTextAmount[i]; j++)
    {
        menuHeaderText[i][j] = " "
        menuHeaderX[i][j] = ((menuBoxDrawX1[i] + menuBoxDrawX2[i]) / 2)
        menuHeaderY[i][j] = (menuBoxDrawY1[i] + 10)
        menuHeaderColor[i][j] = 16777215
        menuHeaderWidth[i][j] = 0
        menuHeaderHeight[i][j] = 0
    }
}
