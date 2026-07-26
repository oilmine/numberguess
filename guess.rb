require "bundler/setup"
require "colorize"

def clear
  system("clear") || system("cls")
end

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

EASY_RANGE = 10
MID_RANGE = 50
HARD_RANGE = 100

clear
puts ""
puts "#".cyan * 40
puts "             NUMBERGUESS            "
puts "#".cyan * 40

loop do
  df_lvl = ["easy", "medium", "hard"]
  gm_lvl = ["classic", "binary"]

  puts ""
  print "Enter gamemode (Classic, Binary): "
  gm = gets.chomp
  gm = gm.downcase
  puts ""

  if !gm_lvl.include?(gm)
    puts "Invalid gamemode."
    exit
  end
  
  if gm == "classic"
    print "Enter difficulty level (Easy, Medium, Hard): "
    df = gets.chomp
    df = df.downcase
    puts ""

    if !df_lvl.include?(df)
      puts "Invalid difficulty."
      exit
    end

    if df == "easy"
      logic(EASY_RANGE)
    elsif df == "medium"
      logic(MID_RANGE)
    elsif df == "hard"
      logic(HARD_RANGE)
    end
  end
  if gm == "binary"
    bin_logic
  end
end