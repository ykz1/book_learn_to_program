# 9.5 Ask method

def ask(question)
  while true
    puts question
    input = gets.chomp.downcase

    case input
    when "yes"
      return true
    when "no"
      return false
    else
      print "enter a valid response. "
    end

  end
end

puts ask("is this a question?")