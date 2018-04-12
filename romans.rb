#9.5 Roman numerals

#old-school try 1
=begin
puts "enter a number"

input = gets.chomp.to_i

input_m = input % 1000
input_d = input_m % 500
input_c = input_d % 100
input_l = input_c % 50
input_x = input_l % 10
input_v = input_x % 5

output = ''

output = output + 'M' * (input / 1000)
output = output + 'D' * (input_m / 500)
output = output + 'C' * (input_d / 100)
output = output + 'L' * (input_c / 50)
output = output + 'X' * (input_l / 10)
output = output + 'V' * (input_x / 5)
output = output + 'I' * (input_v)

puts output
=end

#old-school try 2

puts "enter a number"

input = gets.chomp.to_i

dex = { m: 1000,
        d: 500,
        c: 100,
        l: 50,
        x: 10,
        v: 5,
        i: 1}

temp = input
output = ''

dex.each do |k, v|
  output = output + k.to_s.capitalize * (temp / v)
  temp = temp % v
end

#this makes it modern romans
output.sub! 'DCCCC', 'CM'
output.sub! 'CCCC', 'CD'
output.sub! 'LXXXX', 'XC'
output.sub! 'XXXX', 'XL'
output.sub! 'VIIII', 'IX'
output.sub! 'IIII', 'IV'

puts output