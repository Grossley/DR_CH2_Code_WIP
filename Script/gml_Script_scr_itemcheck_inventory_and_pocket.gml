var _haveeither = false
var itemcounttotal = 0
gml_Script_scr_itemcheck(argument0)
if (haveit == true)
    _haveeither = true
itemcounttotal += itemcount
gml_Script_scr_itemcheck_pocket(argument0)
if (haveit == true)
    _haveeither = true
itemcounttotal += itemcount
haveit = _haveeither
itemcount = itemcounttotal
return haveit;
