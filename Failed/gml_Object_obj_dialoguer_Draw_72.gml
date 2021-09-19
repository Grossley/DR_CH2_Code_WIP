if (zurasu == 1 && zurasucon > 0)
{
    if (zurasucon == 1)
    {
        if gml_Script_i_ex(writer)
        {
            remwriterx = (writer.writingx - gml_Script_camerax())
            remwritery = (writer.writingy - gml_Script_cameray())
        }
        if (global.fc != 0)
        {
            remfacex = (obj_face.x - gml_Script_camerax())
            remfacey = (obj_face.y - gml_Script_cameray())
        }
        zurasucon = 2
    }
    if (zurasucon == 2)
    {
        if gml_Script_i_ex(writer)
        {
            writer.writingx = (remwriterx + gml_Script_camerax())
            writer.writingy = (remwritery + gml_Script_cameray())
            if (global.fc != 0)
            {
                obj_face.x = (remfacex + gml_Script_camerax())
                obj_face.y = (remfacey + gml_Script_cameray())
                writer.writingx += (58 * f)
            }
        }
    }
}
