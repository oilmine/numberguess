require "bundler/setup"
require_relative "src/config"
require_relative "src/gamemodes"
require_relative "src/ui"

title

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