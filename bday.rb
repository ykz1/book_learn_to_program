Dir.chdir '/Users/ykz/dev/ruby/book_learn_to_program'

puts "enter your filename"

filename = gets.chomp + '.txt'

array = File.read(filename).split("\n") rescue "not found"
puts array

myhash = Hash.new

array.each do |record|
  record = record.split(",")
  myhash[record[0].to_sym] = record[1]
end

puts "whose birthday do you want"

person = gets.chomp
date = myhash[person.to_sym]

puts myhash
puts date

if date == nil
  "not found"
else
  puts date
end
