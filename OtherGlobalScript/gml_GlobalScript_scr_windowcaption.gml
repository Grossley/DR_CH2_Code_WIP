if (global.tempflag[10] != 1 && global.chapter == 1)
    window_set_caption(argument0)
else
    window_set_caption(("DELTARUNE Chapter " + string(global.chapter)))
return;
