# Mastermind Game

Mastermind is a classic code-breaking game where you attempt to guess a secret code within a limited number of turns. In this version, the secret code is a sequence of 4 digits randomly chosen from 0 to 9.

## Implementation

This implementation of Mastermind is written in Ruby. It uses simple console input and output to interact with the player.

## Game Rules

- **Objective**: Break the secret code within 10 turns.
- **Feedback Mechanism**: After each guess, you receive feedback:
  - `'*'`: Correct number in the correct position.
  - `'+'`: Correct number in the wrong position.
  - `'-'`: Wrong number.

## Setup

Ensure you have Ruby installed on your system to run the game.

1. **Clone the Repository**: Clone this repository to your local machine.
   
  git clone git@github.com:natelia/MasterMind.git

2. **Navigate to the Directory**: Go to the directory where the game files are located.

  cd mastermind-game-ruby

3. **Run the Game**: Execute the Ruby script to start the game.

  ruby mastermind.rb

4. **Follow Instructions**: Follow the prompts to play the game. Enter your guesses and receive feedback until you either break the code or run out of turns.

## Game Mechanics

**Secret Code Generation**: A random 4-digit code is generated at the start of each game.
**Player Input**: Enter a 4-digit guess to try and break the code.
**Feedback**: Based on your guess, you will receive feedback indicating correct numbers and positions, correct numbers but in the wrong position, or incorrect numbers.

## Contributions

Contributions to improve the game are welcome! If you have ideas for enhancements or find any issues, please submit a pull request or raise an issue.

