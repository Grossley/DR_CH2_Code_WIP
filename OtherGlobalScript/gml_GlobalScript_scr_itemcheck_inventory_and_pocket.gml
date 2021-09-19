var _haveeither = 0
var itemcounttotal = 0
gml_Script_scr_itemcheck(argument0)
if (haveit == 1)
    _haveeither = 1
itemcounttotal += itemcount
gml_Script_scr_itemcheck_pocket(argument0)
if (haveit == 1)
    _haveeither = 1
itemcounttotal += itemcount
haveit = _haveeither
itemcount = itemcounttotal
return haveit;
