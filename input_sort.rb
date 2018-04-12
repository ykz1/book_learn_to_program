puts "input yo tings:"

favorites = []

loop_var = true
while loop_var do
  input = gets.chomp
  if input == '' then
    loop_var = false
    puts "DONE."
  else
    favorites.push(input)
  end
end

favorites.sort!
puts "here it is sorted!"
puts favorites