#Display board
def p_board(rows)
    board = rows.map do |row|
        display_row = row.map { |cell| cell.nil? ? '_' : cell }
        display_row.join('|')
    end
    for i in 0..2
        board[i].prepend(' '*3)
    end
    board = board.join("\n")
    puts board
end