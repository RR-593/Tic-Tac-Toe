require "~/CA/Ruby/Tic-Tac-Toe/p_board"

def printgame(rows)
    cls
    puts $gameon != '' ? "   SCORE \n #{$players[0][:name]}: #{$players[0][:score]} #{$players[1][:name]}: #{$players[1][:score]}\n\n" : nil
    p_board(rows)
end