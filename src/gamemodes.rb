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
      puts "\nYou guessed it! The number was #{num}.".green
      puts "You used #{guesses} guesses.".green
      break
    end
  end 
end

def cl_cs_logic()
  print "Enter minimum number: "
  cus_min = gets.chomp.to_i
  print "Enter maximum number: "
  cus_max = gets.chomp.to_i
  print "Enter guess amount: "

  guess_amount = gets.chomp.to_i
  guesses = 0
  num = rand(cus_min..cus_max)

  until guesses == guess_amount
    print "\nGUESS THE NUMBER: "
    guess = gets.chomp.to_i
    guesses = guesses + 1

    if guess < cus_min || guess > cus_max
      puts "Your guess is not in range.".red
    elsif guess < num
      puts "⬇ Your guess is too low!".blue
    elsif guess > num
      puts "⬆ Your guess is toohi!".magenta
    elsif guess == num
      victory = true
      puts "\nYou guessed it! The number was #{num}.".green
      puts "You used #{guesses} guesses.".green
      break
    end
  end
  puts "You ran out of guesses! The number was #{num}.".red unless victory == true
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
      puts "\nYou guessed it! The number was #{num}.".green
      puts "You used #{guesses} guesses.".green
      break
    elsif diff <= 2
      puts "🔥 Flames"
    elsif diff <= 4
      puts "🧯 Hot"
    elsif diff <= 8
      puts "🌡️  Warm"
    elsif diff <= 12
      puts "⭐  Normal"
    elsif diff <= 18
      puts "❄️  Cold"
    elsif diff <= 25
      puts "🌨️  Snowstorm"
    else
      puts "🏔️  Frozen"
    end
  end
end  

def play_reverse()
  puts "Enter lower bound: "
  l_bound = gets.chomp.to_i
  puts "Enter upper bound: "
  u_bound = gets.chomp.to_i
  guess = 0
  guesses = 0

  loop do
    guess = (l_bound + u_bound) / 2
    puts "Is your number #{guess} ? (H/L/C) => "
    ans = gets.chomp.downcase
    guesses = guesses + 1

    if ans == "h"
      l_bound = guess + 1
    elsif ans == "l"
      u_bound = guess - 1
    elsif ans == "c"
      puts "\nYay! The number indeed was #{guess}.".green
      puts "I got it in #{guesses} guess(es).".green
      break
    end
  end
end