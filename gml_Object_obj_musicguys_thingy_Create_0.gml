timer = 0
mode = 4
count = 0
input_memorizer = 0
file = "bulletpattern.txt"
n = 0
finished = 0
while (finished == 0)
{
    linestring = file
    if (linestring == "x")
        break
    else
    {
        found = 0
        j = 1
        b = 0
        mystring[0] = ""
        mystring[1] = ""
        mystring[2] = ""
        while (found == 0)
        {
            foundchar = string_char_at(linestring, j)
            if (foundchar != " " && foundchar != ",")
                mystring[b] += foundchar
            if (foundchar == ",")
                b++
            j++
            if (foundchar == "")
                found = 1
        }
        bullet_frame[n] = (mystring[0] - 150)
        bullet_pos[n] = mystring[1]
        bullet_height[n] = mystring[2]
        file
        n++
        if (n >= 2000)
            finished = 1
        continue
    }
}
file
remframe = bullet_frame[0]
bulletcount = 0
bulletmax = (n - 1)
mframecount = 0
