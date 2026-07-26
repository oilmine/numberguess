require "colorize"

def clear
  system("clear") || system("cls")
end

def title
  clear
  puts ""
  puts "#".cyan * 40
  puts "             NUMBERGUESS            "
  puts "#".cyan * 40
end
