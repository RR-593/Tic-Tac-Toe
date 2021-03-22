require "./p_score_board"

def player_turn(rows,x)
    exit_g = "nah"
    coords = nil
    freespace = "We good"
    begin 
        #If space taken error message
        puts freespace.nil? ? "Sorry what?" : ''
        #Get player coordinates
        puts "(enter a number between 1-9)"
        print "Player '#{$players[x][:name]}' type coordinate: "
        
        coords = gets.chomp.to_i

        #Is space free check and input into the board
        for i in 1 .. 3
            case (rows[i-1][coords-(i*3-2)].nil?) && coords
            when i*3-2 .. 3*i
               freespace = "We good" 
                rows[i-1][coords-(i*3-2)] = $players[x][:name]
                break
            when 0
                freespace = "We good"
                exit_g = nil
            else
                freespace = nil
            end
        end
        printgame(rows)
    end until freespace
    return exit_g
end