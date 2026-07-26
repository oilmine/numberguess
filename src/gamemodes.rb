def cl_logic(range)
  num = rand(range)
  guesses = 0
  loop do
    print "GUESS THE NUMBER: "
    guess = gets.chomp.to_i
    guesses = guesses + 1
    if guess > range
      puts "Your guess is not in range.".red
    elsif guess < num
      puts "⬇ Your guess is too low!".blue
    elsif guess > num
      puts "⬆ Your guess is toohi!".magenta
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

def hoc_logic(range)
  num = rand(0..range)
  guesses = 0
  loop do
    print "GUESS: "
    guess = gets.chomp.to_i
    guesses = guesses + 1
    if guess < 0 || guess > range
      puts "🪏  Ice age (Out of range)"
      next
    end
    diff = (guess - num).abs
    if guess == num
      puts "You guessed it! The number was #{num}."
      puts "You used #{guesses} guesses."
      break
    elsif diff <= 5
      puts "🔥 Flames"
    elsif diff <= 10
      puts "🧯 Hot"
    elsif diff <= 20
      puts "🌡️ Warm"
    elsif diff <= 25
      puts "⭐ Normal"
    elsif diff <= 30
      puts "❄️ Cold"
    elsif diff <= 35
      puts "🌨️ Snowstorm"
    else
      puts "🏔️ Frozen"
    end
  end
end