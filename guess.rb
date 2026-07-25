def logic(range)
  num = rand(range)
  loop do
    print "GUESS THE NUMBER: "
    guess = gets.chomp.to_i
    if guess > range
      puts "Your guess is not in range."
    elsif guess < num
      puts "Your guess is too low!"
    elsif guess > num
      puts "Your guess is toohi!"
    elsif guess == num
      puts "You guessed it! The number was #{num}."
      break
    end
  end
end

system("clear")

EZ_RANGE = 10
MD_RANGE = 50
HD_RANGE = 100
BIN_RANGE = 2

loop do
  df_lvl = ["easy", "medium", "hard", "binary"]

  puts ""
  print "Enter difficulty level (Easy, Medium, Hard, Binary): "
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
  elsif df == "binary"
    logic(BIN_RANGE)
  end
end