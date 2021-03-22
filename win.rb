
def win(rows,x)

    #vertical/ horizontal check
    for i in 0..2
        if    check_cols(rows,i) |  (check_rows(rows,i) | check_diags(rows,i))#Checks coloumns if they are equal and not nil
            return $players[x][:name]
        end
    end
    return 'no one'

end

def check_cols(rows,i)
    return    (rows[i][0] == rows[i][1])   &&       ((rows[i][0] == rows[i][2])       &&   rows[i][0] != nil)
end

def check_rows(rows,i)
    return    (rows[0][i] == rows[1][i])   &&       ((rows[0][i] == rows[2][i])       &&   rows[0][i] != nil)
end

def check_diags(rows,i)
    return ((rows[1][1] == rows[0][2*i])   &&   ((rows[1][1] == rows[2][2 - (2*i)])   &&   rows[1][1] != nil))   &&  (i<2)
end