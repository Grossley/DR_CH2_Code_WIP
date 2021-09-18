animator.state = 3
if dojo
{
    animator.quizloop = 1
    restart = 1
    state = 0
    timer = 0
    if (difficulty == 0)
    {
        state = -1
        timer = 10
    }
    currentturn = 0
    if (difficulty < 7)
        rounds++
    if (rounds == 2)
    {
        rounds = 0
        difficulty++
    }
}
else
    // WARNING: Popz'd an empty stack.
