if (GameOver == 0)
{
    for (i = 0; i < 16; i += 1)
    {
        for (j = 0; j < 6; j += 1)
        {
            if (TileYouCanBuild[i][j] == 1)
            {
                CursorX = i
                CursorY = j
                CursorVisualX = (i * 40)
                CursorVisualY = ((j * 40) + 80)
                return;
            }
        }
    }
}
return;
