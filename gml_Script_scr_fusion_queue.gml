argument0
fusionIngredient1[fusioncount] = ingredient[0]
fusionIngredient2[fusioncount] = ingredient[1]
fusionIngredientName1[fusioncount] = "--"
fusionIngredientName2[fusioncount] = "--"
fusionIngredientType1[fusioncount] = ingredienttype[0]
fusionIngredientType2[fusioncount] = ingredienttype[1]
fusionDesc[fusioncount] = resultdesc
fusionResult[fusioncount] = result
fusionResultType[fusioncount] = resulttype
fusionResultName[fusioncount] = "--"
fusionResultTopComment[fusioncount] = "--"
fusionHaveIngredient1[fusioncount] = 0
fusionHaveIngredient2[fusioncount] = 0
fusionCanMake[fusioncount] = 0
if (fusionIngredientType1[fusioncount] == "item")
{
    fusionIngredient1[fusioncount]
    fusionIngredientName1[fusioncount] = itemnameb
    if fusionIngredient1[fusioncount]
        fusionHaveIngredient1[fusioncount] = 1
}
if (fusionIngredientType1[fusioncount] == "weapon")
{
    fusionIngredient1[fusioncount]
    fusionIngredientName1[fusioncount] = weaponnametemp
    if fusionIngredient1[fusioncount]
        fusionHaveIngredient1[fusioncount] = 1
}
if (fusionIngredientType1[fusioncount] == "armor")
{
    fusionIngredient1[fusioncount]
    fusionIngredientName1[fusioncount] = armornametemp
    if fusionIngredient1[fusioncount]
        fusionHaveIngredient1[fusioncount] = 1
}
if (fusionIngredientType1[fusioncount] == "key")
{
    fusionIngredient1[fusioncount]
    fusionIngredientName1[fusioncount] = tempkeyitemname
    if fusionIngredient1[fusioncount]
        fusionHaveIngredient1[fusioncount] = 1
}
identicalcheck = 0
if (fusionIngredientType2[fusioncount] == fusionIngredientType2[fusioncount])
{
    if (fusionIngredient1[fusioncount] == fusionIngredient2[fusioncount])
        identicalcheck = 1
}
if (fusionIngredientType2[fusioncount] == "item")
{
    fusionIngredient2[fusioncount]
    fusionIngredientName2[fusioncount] = itemnameb
    if fusionIngredient2[fusioncount]
    {
        if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
            fusionHaveIngredient2[fusioncount] = 1
    }
}
if (fusionIngredientType2[fusioncount] == "weapon")
{
    fusionIngredient2[fusioncount]
    fusionIngredientName2[fusioncount] = weaponnametemp
    if fusionIngredient2[fusioncount]
    {
        if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
            fusionHaveIngredient2[fusioncount] = 1
    }
}
if (fusionIngredientType2[fusioncount] == "armor")
{
    fusionIngredient2[fusioncount]
    fusionIngredientName2[fusioncount] = armornametemp
    if fusionIngredient2[fusioncount]
    {
        if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
            fusionHaveIngredient2[fusioncount] = 1
    }
}
if (fusionIngredientType2[fusioncount] == "key")
{
    fusionIngredient2[fusioncount]
    fusionIngredientName2[fusioncount] = tempkeyitemname
    if fusionIngredient2[fusioncount]
    {
        if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
            fusionHaveIngredient2[fusioncount] = 1
    }
}
if (fusionResultType[fusioncount] == "item")
{
    fusionResult[fusioncount]
    fusionResultName[fusioncount] = itemnameb
    fusionResultTopComment[fusioncount] = fusionResult[fusioncount]
}
if (fusionResultType[fusioncount] == "weapon")
{
    fusionResult[fusioncount]
    fusionResultName[fusioncount] = weaponnametemp
    fusionResultTopComment[fusioncount] = weapondesctemp
}
if (fusionResultType[fusioncount] == "armor")
{
    fusionResult[fusioncount]
    fusionResultName[fusioncount] = armornametemp
    fusionResultTopComment[fusioncount] = armordesctemp
}
if (fusionResultType[fusioncount] == "key")
{
    fusionResult[fusioncount]
    fusionResultName[fusioncount] = tempkeyitemname
    fusionResultTopComment[fusioncount] = tempkeyitemdesc
}
if (fusionHaveIngredient1[fusioncount] && fusionHaveIngredient2[fusioncount])
    fusionCanMake[fusioncount] = 1
fusioncount++
return;
