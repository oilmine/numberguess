require "bundler/setup"
require_relative "src/config"
require_relative "src/gamemodes"
require_relative "src/ui"

title

begin
  loop do
  gm_lvl = ["classic", "binary", "hoc"]
  df_lvl = ["easy", "medium", "hard", "custom"]

  puts ""
  puts "______________________________________"
  print "|   Classic   |   "
  print "Binary   |   "
  print "HoC   |  "
  puts ""
  puts ""
  print "CHOOSE THE GAMEMODE: "
  gm = gets.chomp
  gm = gm.downcase
  puts ""

  if !gm_lvl.include?(gm)
    puts "Invalid gamemode."
    exit
  end
  
  if gm == "classic"
    puts "_________________________________________________"
    print "|   Easy   |   "
    print "Medium   |   "
    print "Hard   |   "
    print "Custom   |   "
    puts ""
    puts ""
    print "CHOOSE THE DIFFICULTY: "
    df = gets.chomp
    df = df.downcase
    puts ""

    if !df_lvl.include?(df)
      puts "Invalid difficulty."
      exit
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
    puts ""
    puts ""
    print "CHOOSE THE DIFFICULTY: "
    df = gets.chomp
    df = df.downcase
    puts ""

    if !df_lvl.include?(df)
      puts "Invalid difficulty."
      exit
    end

    if df == "easy"
      hoc_logic(EASY_RANGE)
    elsif df == "medium"
      hoc_logic(MID_RANGE)
    elsif df == "hard"
      hoc_logic(HARD_RANGE)
    end
  end
end
rescue Interrupt
  puts "\nQuitting..."
  exit
end

