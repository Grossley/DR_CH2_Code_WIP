scr_weaponinfo_mine_ch1 = function() // gml_Script_scr_weaponinfo_mine_ch1
{
    for (i = 0; i < 4; i += 1)
    {
        scr_weaponinfo_ch1(global.charweapon[i])
        charweaponname[i] = weaponnametemp
        charweapondesc[i] = weapondesctemp
        charweaponat[i] = weaponattemp
        charweapondf[i] = weapondftemp
        charweaponmag[i] = weaponmagtemp
        charweaponbolts[i] = weaponboltstemp
        charweaponstyle[i] = weaponstyletemp
        charweapongrazeamt[i] = weapongrazeamttemp
        charweapongrazesize[i] = weapongrazesizetemp
        charweaponability[i] = weaponabilitytemp
        charweaponabilityicon[i] = weaponabilityicontemp
        charweaponicon[i] = weaponicontemp
        global.itemat[i][0] = weaponattemp
        global.itemdf[i][0] = weapondftemp
        global.itemmag[i][0] = weaponmagtemp
        global.itembolts[i][0] = weaponboltstemp
        global.itemgrazeamt[i][0] = weapongrazeamttemp
        global.itemgrazesize[i][0] = weapongrazesizetemp
    }
    return;
}

