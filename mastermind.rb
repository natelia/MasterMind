# Define parameters
MAX_TURNS = 12
CODE_LENGTH = 4
NUMBER_RANGE = (1..9)

# Generate secret code
SECRET_CODE = [1, 2, 3, 4]

# Provide Feedback Mechanism
# '*' correct number in the correct position
# '+' correct number in the wrong position
# '-' wrong number in the wrong position
 
def provide_feedback(guess)
  feedback = []
    guess.each_with_index do |player_digit, index|
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

player_guess = [2, 1, 5, 4]
feedback_result = provide_feedback(player_guess)

puts "Player's Guess: #{player_guess}"
puts "Feedback: #{feedback_result}"
