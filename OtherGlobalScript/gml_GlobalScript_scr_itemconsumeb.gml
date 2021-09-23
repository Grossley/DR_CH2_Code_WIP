global.faceaction[global.charturn] = 3
global.charaction[global.charturn] = 4
global.charspecial[global.charturn] = (tempitem[global.bmenucoord[4][global.charturn]][global.charturn] + 200)
if (usable == true && replaceable == false)
    gml_Script_scr_itemshift_temp(global.bmenucoord[4][global.charturn], global.charturn)
else if (replaceable > 0)
    tempitem[global.bmenucoord[4][global.charturn]][global.charturn] = replaceable
gml_Script_scr_nexthero()
return;
