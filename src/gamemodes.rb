def logic(range)
  num = rand(range)
  guesses = 0
  loop do
    print "GUESS THE NUMBER: "
    guess = gets.chomp.to_i
    guesses = guesses + 1
    if guess > range
      puts "Your guess is not in range.".red
    elsif guess < num
      puts "Your guess is too low!".blue
    elsif guess > num
      puts "Your guess is toohi!".magenta
    elsif guess == num
      puts "You guessed it! The number was #{num}."
      puts "You used #{guesses} guesses."
      break
    end
  end 
end

def bin_logic
  num = rand(2)
  print "YOU HAVE ONE CHANCE (PICK 0 OR 1): "
  guess = gets.chomp.to_i
  if guess == num 
    puts "You guessed it! The number was #{num}.".green
  else
    puts "You didn't guess it! The number was #{num}.".red
  end
end