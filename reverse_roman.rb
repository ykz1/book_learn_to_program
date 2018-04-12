# 12.6 reverse roman

# get input
puts "enter a number"
input = gets.chomp.to_i

# convert to old roman numerals
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

# this makes it modern roman numerals
output.sub! 'DCCCC', 'CM'
output.sub! 'CCCC', 'CD'
output.sub! 'LXXXX', 'XC'
output.sub! 'XXXX', 'XL'
output.sub! 'VIIII', 'IX'
output.sub! 'IIII', 'IV'

puts output

# convert roman numeral back into integer
output2 = 0
toggle = false

output.split('').each do |i|
  output2 = output2 + dex[i.downcase.to_sym]
end

dex2 = {  CM: -200,
          CD: -200,
          XC: -20,
          XL: -20,
          IX: -2,
          IV: -2}

dex2.each do |k, v|
  output2 = output2 + v if output.include? k.to_s
end

puts output2
