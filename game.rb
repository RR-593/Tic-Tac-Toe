require "./win"
require "./p_score_board"
require "./score"
require "./player_turn"
require "./clear_screen"
require "./draw"
require "./end_game"

def game
    leave_game = nil
    rows = [[nil,nil,nil],
            [nil,nil,nil],
            [nil,nil,nil]
    ]

    #Game session
    $players.cycle {|player|   
        printgame(rows) #Print Score and board
        dis_win = win(rows) #Display winner holds name of winner or 'no one'
        (draw?(rows) == 9) || (dis_win != "no one") ? leave_game = endgame(rows,dis_win) : leave_game = player_turn(rows,player[:name]) #If board full or if winner not 'no one' break loop / #Get player input 
        leave_game ? break : ''
    }
end