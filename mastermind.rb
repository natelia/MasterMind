# Define parameters
MAX_TURNS = 12
CODE_LENGTH = 4
NUMBER_RANGE = (0..9)

# Generate secret code
SECRET_CODE = [1, 2, 3, 4]

# Provide Feedback Mechanism
# '*' correct number in the correct position
# '+' correct number in the wrong position
# '-' wrong number in the wrong position
 
def provide_feedback(guess)
  feedback = []
  guess.each_with_index do |player_digit, index|
    player_digit = player_digit.to_i
        if SECRET_CODE[index] == player_digit
          feedback << '*'
        elsif SECRET_CODE.include?(player_digit)
          feedback << '+'
        else
          feedback << '-'
        end
    end
          feedback
        
end

# Player's turn
def getting_player_guess
  puts "Welcome in the game!"
  loop do
  puts 'Please enter your 4 - digit guess code. :)'
  player_guess = gets.chomp.chars

  until player_guess.length == CODE_LENGTH && player_guess.all? { |char| NUMBER_RANGE.cover?(char.to_i) } do
    puts 'Invalid code. Please enter 4-digit code. Thank you!'
    player_guess = gets.chomp.chars
  end
  puts "Your guess is: #{player_guess}"
  puts "Here is feedback based on your guess: #{provide_feedback(player_guess)}"
  puts 'Is it your final answer? (y/n)'

  confirmation = gets.chomp.downcase

  return player_guess if confirmation == "y"
  end
end

def check_if_win?(player_guess)
  player_guess = player_guess.to_i
  if player_guess == SECRET_CODE
    puts "Congratulations! You have broke the code!"
  end
end


player_guess = getting_player_guess
feedback_result = provide_feedback(player_guess)
puts "Player's Guess: #{player_guess}"
puts "Feedback: #{feedback_result}"
puts "Solution: #{SECRET_CODE}"
check_if_win?(player_guess)
