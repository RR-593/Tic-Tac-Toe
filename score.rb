def score(winner)
    for i in 0..1
        $players[i][:name] == winner ? $players[i][:score] += 1 : nil
    end
end