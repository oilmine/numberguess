require "bundler/setup"
require_relative "src/config"
require_relative "src/gamemodes"
require_relative "src/ui"

title

begin
  loop do
  gm_lvl = ["classic", "binary", "hoc", "reverse"]
  df_lvl = ["easy", "medium", "hard", "custom"]

  puts "\n____________________________________________________"
  print "|   Classic   |   "
  print "Binary   |   "
  print "HoC   |   "
  print "Reverse   |  "
  puts "\n\nCHOOSE THE GAMEMODE: "
  gm = gets.chomp
  gm = gm.downcase
  puts ""

  if !gm_lvl.include?(gm)
    puts "Invalid gamemode."
  end
  
  if gm == "classic"
    puts "_________________________________________________"
    print "|   Easy   |   "
    print "Medium   |   "
    print "Hard   |   "
    print "Custom   |   "
    puts "\n\nCHOOSE THE DIFFICULTY: "
    df = gets.chomp
    df = df.downcase
    puts ""

    if !df_lvl.include?(df)
      puts "Invalid difficulty."
    end

    if df == "easy"
      cl_logic(EASY_RANGE)
    elsif df == "medium"
      cl_logic(MID_RANGE)
    elsif df == "hard"
      cl_logic(HARD_RANGE)
    elsif df == "custom"
      cl_cs_logic
    end
  end

  if gm == "binary"
    bin_logic
  end

  if gm == "hoc"
    puts "____________________________________"
    print "|   Easy   |   "
    print "Medium   |   "
    print "Hard   |   "
    puts "\n\nCHOOSE THE DIFFICULTY: "
    df = gets.chomp.downcase
    puts ""

    if !df_lvl.include?(df)
      puts "Invalid difficulty."
    end

    if df == "easy"
      hoc_logic(EASY_RANGE)
    elsif df == "medium"
      hoc_logic(MID_RANGE)
    elsif df == "hard"
      hoc_logic(HARD_RANGE)
    end
  end

  if gm == "reverse"
    reverse_logic
  end
end
rescue Interrupt
  clear
  exit
end