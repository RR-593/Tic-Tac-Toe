require "./win"
require "./p_score_board"
require "./score"
require "./player_turn"
require "./clear_screen"
require "./draw"

def game
    x = 0
    leave_game = 'nah'
    rows = [[nil,nil,nil],
            [nil,nil,nil],
            [nil,nil,nil]
    ]

    #Game session
    until leave_game.nil? do
        printgame(rows) #Print Score and board
        dis_win = win(rows,x) #Display winner holds name of winner or 'no one'
        (draw?(rows) == 9) || (dis_win != "no one") ? break : '' #If board full or if winner not 'no one' break loop
        x = x == 0 ? 1 : 0 #Decide which player's turn it is
        leave_game = player_turn(rows,x) #Get player input
    end
    #end of game session

    $gameon = 'Show scoreboard'
    score(dis_win) #Update score board
    printgame(rows) #Print Score and board
    puts dis_win == "no one" ? "\nCongrats '#{dis_win}' won!!!\n\n" : "\nIt's a draw\n\n" #Print winner or draw
end