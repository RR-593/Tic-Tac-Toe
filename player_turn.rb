require "./p_score_board"

def player_turn(rows,player)
    exit_g = false
    coords = nil
    freespace = "We good"
    begin 
        #If space taken error message
        puts freespace.nil? ? "Sorry what?" : ''
        #Get player coordinates
        puts "(enter a number between 1-9)"
        print "Player '#{player}' type coordinate: "
        
        coords = gets.chomp.to_i

        #Is space free check and input into the board
        for i in 1 .. 3
            case (rows[i-1][coords-(i*3-2)].nil?) && coords
            when i*3-2 .. 3*i
               freespace = "We good" 
                rows[i-1][coords-(i*3-2)] = player
                break
            when 0
                freespace = "We good"
                exit_g = true
            else
                freespace = nil
            end
        end
        printgame(rows)
    end until freespace
    return exit_g
end