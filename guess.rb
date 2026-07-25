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
      puts "Your guess is not in range."
    elsif guess < num
      puts "Your guess is too low!"
    elsif guess > num
      puts "Your guess is toohi!"
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
    puts "You guessed it! The number was #{num}."
  else
    puts "You didn't guess it! The number was #{num}."
  end
end

EZ_RANGE = 10
MD_RANGE = 50
HD_RANGE = 100

clear
puts ""
puts "#" * 40
puts "            NUMBERGUESS             "
puts "#" * 40


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
      logic(EZ_RANGE)
    elsif df == "medium"
      logic(MD_RANGE)
    elsif df == "hard"
      logic(HD_RANGE)
    end
  end
  if gm == "binary"
    bin_logic
  end
end