if (stickingobj && stucktoobj)
{
    stickingobj.depth = (stucktoobj.depth + relativedepth)
    stickingobj.x = (stucktoobj.x + relx)
    stickingobj.y = (stucktoobj.y + rely)
}
else
    // WARNING: Popz'd an empty stack.
