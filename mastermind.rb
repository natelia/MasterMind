# Define parameters
MAX_TURNS = 10
CODE_LENGTH = 4
NUMBER_RANGE = (0..9)

# Generate secret code
SECRET_CODE = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].sample(4)

# Provide Feedback Mechanism
# '*' correct number in the correct position
# '+' correct number in the wrong position
# '-' wrong number in the wrong position
 
def provide_feedback(guess)
  guess.map.with_index do |player_digit, index|
    player_digit = player_digit.to_i
    if SECRET_CODE[index] == player_digit
      puts "You have chosen perfect place for #{player_digit}"
      '*'
    elsif SECRET_CODE.include?(player_digit)
      puts "#{player_digit} includes in the Secret Code but it is in the wrong place!"
      '+'
    else
      puts "#{player_digit } not includes in the Secret Code"
      '-'
    end
  end
end

def hello
  puts 'Hi! What is your name?'
  name = gets.chomp
  puts "Welcome in the game #{name}!"
end

# Player's turn
def getting_player_guess
  puts 'Please enter your 4 - digit guess code. :)'
  player_guess = gets.chomp.chars

  until player_guess.length == CODE_LENGTH
    puts 'Invalid code. Please enter 4-digit code. Thank you!'
    player_guess = gets.chomp.chars
  end

  puts "Your guess is: #{player_guess.join}"

  player_guess
end

def play_again?
  puts 'Do you want to play again?'
  answer = gets.chomp.downcase
  answer == 'yes'
end

def game_loop
  turns_left = MAX_TURNS

  while turns_left.positive?
    player_guess = getting_player_guess
    feedback_result = provide_feedback(player_guess)

    break if code_broken?(feedback_result)

    turns_left -= 1
  end

  display_end_message(turns_left)
end

def code_broken?(feedback_result)
  if feedback_result.all?('*')
    puts 'Congrats! You have broken the code!'
    true
  else
    false
  end
end

def display_end_message(turns_left)
  if turns_left.zero?
    puts "I'm sorry, you ran out of turns."
    puts "Solution you were looking for was: #{SECRET_CODE.join}"
  end
end

hello
game_loop
game_loop while play_again?
