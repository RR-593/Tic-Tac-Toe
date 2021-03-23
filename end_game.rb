def endgame(rows,dis_win)
    $gameon = 'Show scoreboard'
    score(dis_win) #Update score board
    printgame(rows) #Print Score and board
    puts dis_win != "no one" ? "\nCongrats '#{dis_win}' won!!!\n\n" : "\nIt's a draw\n\n" #Print winner or draw
    return true
end