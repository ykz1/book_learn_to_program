puts "what do you say?"

counter = 0

while true

  input = gets.chomp

  if input == "BYE"
    counter += 1
    if counter == 3 
      puts "NO, NOT SINCE " + (1930 + rand(20)).to_s
      break
    else
      puts "COME AGAIN"
    end
  else
    counter = 0
    puts "SPEAK UP"
  end
end
