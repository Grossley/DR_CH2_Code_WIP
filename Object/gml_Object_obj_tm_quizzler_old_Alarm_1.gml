animator.state = 3
if dojo
{
    animator.quizloop = 1
    restart = true
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
    instance_destroy()
