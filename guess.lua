#!/usr/bin/env lua

function guess(answer)
    score = 0
    guess = -1
    while answer ~= guess do
        guess = tonumber(io.read())
        score = score + 1
        if guess > answer then
            print "Smaller"
        else
            print "Bigger"
        end
    end
    print "You WIN"
    return score
end

math.randomseed(os.time())
print("Guess number I think of")
print("Score: " .. guess(math.random(100)))
