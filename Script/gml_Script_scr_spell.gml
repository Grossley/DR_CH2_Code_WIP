spell = argument0
caster = argument1
star = global.chartarget[argument1]
global.spelldelay = 10
switch spell
{
    case 0:
        break
    case 1:
        cancelattack = false
        if (global.monster[star] == false)
            gml_Script_scr_retarget_spell()
        if (cancelattack == false)
        {
            damage = ceil(((global.battleat[argument1] * 10) - (global.monsterdf[star] * 3)))
            if (global.automiss[star] == true)
                damage = 0
            gml_Script_scr_damage_enemy(star, damage)
            attack = gml_Script_instance_create((global.monsterx[star] + random(6)), (global.monstery[star] + random(6)), obj_basicattack)
            attack.sprite_index = spr_attack_mash1
            dm.delay = 8
        }
        global.spelldelay = 30
        break
    case 2:
        healnum = (global.battlemag[argument1] * 5)
        gml_Script_scr_heal(star, healnum)
        global.charinstance[star].healnum = healnum
        with (global.charinstance[star])
		{
			ha = gml_Script_instance_create(x, y, obj_healanim)
			ha.target = id
		}
        dmgwr = gml_Script_scr_dmgwriter_selfchar()
        with (dmgwr)
		{
			delay = 8
			type = 3
		}
    case 3:
        if (global.monster[star] == false)
            gml_Script_scr_retarget_spell()
        if (global.monster[star] == true)
        {
            if (global.monsterstatus[star] == true)
            {
				with (global.monsterinstance[star])
				{
					if (global.monstertype[myself] != 19 && global.monstertype[myself] != 3 && global.monstertype[myself] != 52 && global.monstertype[myself] != 43)
					{
						if (global.monstertype[myself] == 33)
							var yoffy = -60
						else
							yoffy = 0
						_pspell = gml_Script_instance_create(global.monsterx[myself], (global.monstery[myself] + yoffy), obj_pacifyspell)
						_pspell.con = 20
						_pspell.target = id
						global.flag[(51 + myself)] = 3
						event_user(10)
						gml_Script_scr_monsterdefeat()
					}
					else
					{
						if (global.monstertype[myself] == 52)
						{
							_pspell = gml_Script_instance_create(global.monsterx[myself], global.monstery[myself], obj_pacifyspell)
							_pspell.con = 20
							_pspell.target = id
						}
						if (global.monstertype[myself] == 43)
						{
							_pspell = gml_Script_instance_create(global.monsterx[myself], global.monstery[myself], obj_pacifyspell)
							_pspell.con = 20
							_pspell.target = id
							global.flag[(51 + myself)] = 3
							with (obj_berdlyb_enemy)
								endcon = 1
							return;
						}
						pacifycon = 1
						global.spelldelay = 999
					}
                }
            }
            else
            {
                if (global.monstertype[myself] == 52)
                    pacifycon = -2
                _pspell = gml_Script_instance_create(0, 0, obj_pacifyspell)
                _pspell.target = global.monsterinstance[star]
                _pspell.fail = 1
            }
        }
        global.spelldelay = 20
        break
    case 4:
        cancelattack = false
        global.spelldelay = 30
        if (global.monster[star] == false)
            gml_Script_scr_retarget_spell()
        if (cancelattack == false)
        {
            global.spelldelay = 70
            damage = ceil((((global.battlemag[argument1] * 5) + (global.battleat[argument1] * 11)) - (global.monsterdf[star] * 3)))
            if (global.automiss[star] == true)
                damage = 0
            attack = gml_Script_instance_create(obj_herosusie.x, obj_herosusie.y, obj_rudebuster_anim)
            attack.damage = damage
            attack.star = star
            attack.caster = caster
            attack.target = global.monsterinstance[star]
        }
        break
    case 5:
        cancelattack = false
        global.spelldelay = 30
        if (global.monster[star] == false)
            gml_Script_scr_retarget_spell()
        if (cancelattack == false)
        {
            global.spelldelay = 70
            damage = ceil((((global.battlemag[argument1] * 6) + (global.battleat[argument1] * 13)) - (global.monsterdf[star] * 6)))
            if (global.automiss[star] == true)
                damage = 0
            attack = gml_Script_instance_create(obj_herosusie.x, obj_herosusie.y, obj_rudebuster_anim)
            attack.damage = damage
            attack.star = star
            attack.caster = caster
            attack.target = global.monsterinstance[star]
            attack.red = 1
        }
        break
    case 6:
        healnum = ceil((global.battlemag[argument1] * 5.5))
        i = 0
        while (i < 3)
        {
            gml_Script_scr_heal(i, healnum)
            global.charinstance[i].healnum = healnum
			with (global.charinstance[i])
			{
				ha = gml_Script_instance_create(x, y, obj_healanim)
				ha.target = id
			}
			dmgwr = gml_Script_scr_dmgwriter_selfchar()
            with (dmgwr)
			{
				delay = 8
				type = 3
			}
        }
        global.spelldelay = 15
        break
    case 8:
        var _mistcount = 0
        for (_spelli = 0; _spelli < 3; _spelli++)
        {
            if (global.monster[_spelli] == true)
            {
                with (global.monsterinstance[_spelli])
				{
					_icemist = gml_Script_instance_create(global.monsterx[myself], global.monstery[myself], obj_spell_mist)
					_icemist.target = id
					_icemist.myself = myself
					_icemist.initdelay = (_mistcount * 10)
					_mistcount++
				}
            }
        }
        global.spelldelay = (20 + (_mistcount * 10))
        break
    case 9:
        cancelattack = false
        global.spelldelay = 30
        if (global.monster[star] == false)
            gml_Script_scr_retarget_spell()
        if (cancelattack == false)
        {
            global.flag[925] = (null + 1)
            // WARNING: Popz'd an empty stack.
            var minbattlemag = clamp((global.battlemag[argument1] - 10), 1, 999)
            global.spelldelay = 40
            damage = ceil((((minbattlemag * 30) + 90) + random(10)))
            attack = gml_Script_instance_create(global.monsterx[star], global.monstery[star], obj_icespell)
            attack.damage = damage
            attack.star = star
            attack.caster = caster
            attack.target = global.monsterinstance[star]
        }
        break
    case 10:
        cancelattack = false
        global.spelldelay = 30
        if (gml_Script_scr_monsterpop() == 0)
            cancelattack = true
        if (cancelattack == false)
        {
            global.spelldelay = 30
            damage = ceil(((global.battlemag[argument1] * 40) + 600))
            attack = gml_Script_instance_create(x, y, obj_spell_snowgrave)
            attack.caster = caster
            attack.damage = damage
            global.spelldelay = 140
            if instance_exists(obj_berdlyb2_enemy)
            {
                global.spelldelay = 999999
                attack.textwait = 1
            }
        }
        break
    case 11:
        healnum = (global.battlemag[argument1] + 1)
        gml_Script_scr_heal(star, healnum)
        global.charinstance[star].healnum = healnum
        with (global.charinstance[star])
		{
			ha = gml_Script_instance_create(x, y, obj_healanim)
			ha.target = id
		}
        dmgwr = gml_Script_scr_dmgwriter_selfchar()
		with (dmgwr)
		{
			delay = 8
			type = 3
		}
    case 100:
        if (global.monster[star] == false)
            gml_Script_scr_retarget_spell()
        if (global.monster[star] == true)
        {
            if (global.mercymod[star] >= 100)
            {
                if (global.monstertype[star] != 3 && global.monstertype[star] != 52)
                {
					with (global.monsterinstance[star])
					{
						global.flag[(51 + myself)] = 2
						event_user(10)
						gml_Script_scr_monsterdefeat()
					}
                }
                else
                {
					with (global.monsterinstance[star])
						sparecon = 1
                }
            }
            else
            {
                gml_Script_scr_mercyadd(star, global.sparepoint[star])
                _pspell = gml_Script_instance_create(0, 0, obj_pacifyspell)
                _pspell.target = global.monsterinstance[star]
                _pspell.fail = 1
                _pspell.flashcolor = c_yellow
            }
        }
        global.spelldelay = 0
        break
    case 200:
        break
    case 201:
        gml_Script_scr_healitemspell(40)
        break
    case 202:
        reviveamt = ceil((global.maxhp[global.char[star]] / 2))
        if (global.hp[global.char[star]] <= 0)
            reviveamt = (ceil(global.maxhp[global.char[star]]) + abs(global.hp[global.char[star]]))
        gml_Script_scr_healitemspell(reviveamt)
        break
    case 203:
        break
    case 204:
        break
    case 205:
        gml_Script_scr_healitemspell(20)
        break
    case 206:
        gml_Script_scr_healallitemspell(160)
        break
    case 207:
        var healamount = (global.chapter == 1 ? 80 : 140)
        gml_Script_scr_healallitemspell(healamount)
        break
    case 208:
        gml_Script_scr_healitemspell(70)
        break
    case 209:
        gml_Script_scr_healitemspell(50)
        break
    case 210:
        gml_Script_scr_healitemspell(4)
        break
    case 211:
        gml_Script_scr_healallitemspell(70)
        break
    case 212:
        if (global.char[star] == 1)
            gml_Script_scr_healitemspell(20)
        if (global.char[star] == 2)
            gml_Script_scr_healitemspell(80)
        if (global.char[star] == 3)
            gml_Script_scr_healitemspell(50)
        if (global.char[star] == 4)
            gml_Script_scr_healitemspell(30)
        break
    case 213:
        if (global.char[star] == 1)
            gml_Script_scr_healitemspell(80)
        if (global.char[star] == 2)
            gml_Script_scr_healitemspell(20)
        if (global.char[star] == 3)
            gml_Script_scr_healitemspell(50)
        if (global.char[star] == 4)
            gml_Script_scr_healitemspell(70)
        break
    case 214:
        gml_Script_scr_healitemspell(500)
        break
    case 215:
        gml_Script_scr_healitemspell(50)
        break
    case 216:
        gml_Script_scr_healitemspell(80)
        break
    case 217:
        break
    case 218:
        gml_Script_scr_healitemspell(gml_Script_scr_teaamount(1, global.char[star]))
        break
    case 219:
        gml_Script_scr_healitemspell(gml_Script_scr_teaamount(4, global.char[star]))
        break
    case 220:
        gml_Script_scr_healitemspell(gml_Script_scr_teaamount(3, global.char[star]))
        break
    case 221:
        gml_Script_scr_healitemspell(gml_Script_scr_teaamount(2, global.char[star]))
        break
    case 222:
        gml_Script_scr_healitemspell(60)
        break
    case 223:
        gml_Script_scr_healitemspell(120)
        break
    case 224:
        gml_Script_scr_healitemspell(100)
        break
    case 225:
        gml_Script_scr_healallitemspell(30)
        break
    case 226:
        healamount = (global.char[star] == 1 ? 100 : 90)
        gml_Script_scr_healitemspell(healamount)
        break
    case 227:
        break
    case 228:
        break
    case 229:
        break
    case 230:
        healamount = 10
        for (var __j = 0; __j < 3; __j++)
        {
            healamount = 10
            star = __j
            if (global.hp[global.char[star]] <= 0)
                healamount = (ceil((global.maxhp[global.char[star]] / 4)) + abs(global.hp[global.char[star]]))
            gml_Script_scr_healitemspell(healamount)
        }
        break
    case 231:
        healamount = 50
        for (__j = 0; __j < 3; __j++)
        {
            healamount = 50
            star = __j
            if (global.hp[global.char[star]] <= 0)
                healamount = 999
            gml_Script_scr_healitemspell(healamount)
        }
        break
    case 232:
        if gml_Script_i_ex(global.charinstance[star])
            global.charinstance[star].poisonamount = 60
        gml_Script_snd_play(170)
        var healanim = gml_Script_scr_healitemspell(40)
        healanim.particlecolor = c_fuchsia
        break
    case 233:
        break
    default:

}

return;
