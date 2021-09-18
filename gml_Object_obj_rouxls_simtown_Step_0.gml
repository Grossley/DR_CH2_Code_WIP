if (MyTurn == 1)
{
    if (CursorX > 0)
        CursorX -= 1
    if (CursorX < 15)
        CursorX += 1
    if (CursorY > 0)
        CursorY -= 1
    if (CursorY < 5)
        CursorY += 1
    if (TileYouCanBuild[CursorX][CursorY] == 1)
    {
        HouseCount++
        TileYouCanBuild[CursorX][CursorY] = 0
        TileHasHouse[CursorX][CursorY] = 1
        64
        obj_rouxls_enemy.hasplayerplacedhouses = 1
        repeat (21)
        {
            gml_Script_instance_create(((base_xpos + (CursorX * 40)) + irandom(40)), (((gml_Script_cameray() + ((CursorY + 1) * 40)) + 40) + irandom(40)), obj_house_placed_effect)
            gml_Script_instance_create(((base_xpos + (CursorX * 40)) + irandom(40)), (((gml_Script_cameray() + ((CursorY + 1) * 40)) + 40) + irandom(40)), obj_house_placed_effect)
            gml_Script_scr_fx_housesquare(((base_xpos + (CursorX * 40)) + 20), (((gml_Script_cameray() + ((CursorY + 1) * 40)) + 40) + 20), 255)
        }
        // WARNING: Popz'd an empty stack.
        if (GameOver == 1 || HouseCount >= HouseCountMax)
        {
            MyTurn = 0
            TurnCon = 1
            HouseCount = 0
        }
    }
}
if (TurnCon == 1)
{
    // WARNING: Popz'd an empty stack.
    if (GameOver == 1)
    {
        0
        if 726
        {
            global.mnfight = 0
            global.myfight = 3
            obj_rouxls_enemy.actcon = 1
            obj_rouxls_enemy.acting = -1
            obj_rouxls_enemy.endbattle = 1
            obj_rouxls_enemy.actresult = actresult
        }
        TurnCon = 5
        MyTurn = 0
        with (obj_rouxls_enemy)
            actcon = 1
    }
    else
    {
        with (obj_rouxls_enemy)
        {
            gml_Script_msgsetloc(0, "* Finished!/%", "obj_rouxls_simtown_slash_Step_0_gml_93_0")
            // WARNING: Popz'd an empty stack.
            actcon = 1
        }
        TurnCon = 5
        MyTurn = 0
    }
}
if (TurnCon == 2)
{
    // WARNING: Popz'd an empty stack.
    RouxlsWaitTimer = 0
    RouxlsHousesBuilt = 0
    TurnCon = 3
}
if (TurnCon == 3)
{
    RouxlsWaitTimer += 1
    if (RouxlsWaitTimer >= 10)
    {
        if (RouxlsHousesBuilt < (RouxlsHouseMax - RalseiDistract) && GameOver == 0)
        {
            found = 0
            while (found == 0)
            {
                RandomHouseX = 15
                RandomHouseY = 6
                if (RandomHouseY == 6)
                    RandomHouseY = 5
                if (TileRouxlsCanBuild[RandomHouseX][RandomHouseY] == 1)
                    found = 1
            }
            TileYouCanBuild[RandomHouseX][RandomHouseY] = 0
            TileHasHouse[RandomHouseX][RandomHouseY] = 2
            // WARNING: Popz'd an empty stack.
            RouxlsHousesBuilt += 1
            RouxlsWaitTimer = 0
            repeat (21)
            {
                gml_Script_instance_create(((gml_Script_camerax() + (RandomHouseX * 40)) + irandom(40)), (((gml_Script_cameray() + ((RandomHouseY + 1) * 40)) + 40) + irandom(40)), obj_house_placed_effect)
                gml_Script_instance_create(((gml_Script_camerax() + (RandomHouseX * 40)) + irandom(40)), (((gml_Script_cameray() + ((RandomHouseY + 1) * 40)) + 40) + irandom(40)), obj_house_placed_effect)
                gml_Script_scr_fx_housesquare(((gml_Script_camerax() + (RandomHouseX * 40)) + 20), (((gml_Script_cameray() + ((RandomHouseY + 1) * 40)) + 40) + 20), 16711680)
            }
            64
        }
        else
            TurnCon = 4
    }
}
if (TurnCon == 4)
{
    if (GameOver == 1)
        TurnCon = 1
    else
    {
        obj_rouxls_enemy.talked = 1
        TurnCon = 5
        Myturn = 0
        RouxlsTurn++
        HouseTensionCost = 0
        if (RalseiDistract == 1)
            RalseiDistractTwice = 1
        if (RalseiDistract == 0 && RalseiDistractTwice == 1)
            RalseiDistractTwice = 0
        RalseiDistract = 0
        if (RouxlsTurn > 2)
            RouxlsHouseMax = 3
        if (RouxlsTurn > 5)
            RouxlsHouseMax = 4
        with (obj_rouxls_enemy)
        {
            if (buildedblockstimer < 50)
                buildedblockstimer = 50
        }
    }
}
CursorIdealVisualX = (CursorX * 40)
CursorIdealVisualY = ((CursorY * 40) + 80)
if (CursorVisualX > CursorIdealVisualX)
    CursorVisualX -= 20
if (CursorVisualX < CursorIdealVisualX)
    CursorVisualX += 20
if (CursorVisualY > CursorIdealVisualY)
    CursorVisualY -= 20
if (CursorVisualY < CursorIdealVisualY)
    CursorVisualY += 20
