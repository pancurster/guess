#!/usr/bin/env node

function game(numberToGuess) {
    var score = 0;
    console.log("Guess number I think of");
    return function guess(x) {
        score += 1;
        if (x == numberToGuess) {
            console.log("You WIN!\nScore:", score);
            process.exit();
        } else if (x > numberToGuess) {
            console.log("Smaller");
        } else if (x < numberToGuess) {
            console.log("Bigger");
        }
    };
}

var randToGuess = Math.floor(Math.random() *100);
process.stdin.on('data', game(randToGuess));
