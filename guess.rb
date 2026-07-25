def logic(range)
  num = rand(range)
  loop do
    print "GUESS THE NUMBER -> "
    guess = gets.chomp.to_i
    if guess > range
      puts "Number is not in range!"
    elsif guess < num
      puts "Number is too low!"
    elsif guess > num
      puts "Number is toohi!"
    elsif guess == num
      puts "You guessed it! The number was #{num}."
      break
    end
  end
end

df_lvl = ["easy", "medium", "hard", "binary"]

puts ""
print "TYPE DIFFICULTY LEVEL -> "
df = gets.chomp
df = df.downcase
puts ""

EZ_RANGE = 10
MD_RANGE = 50
HD_RANGE = 100
BIN_RANGE = 2

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