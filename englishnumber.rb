puts "Enter a number"
input = gets.chomp.to_i

def i_to_s(i)
  output = ""
  if i < 0
    return "Enter a positive"
  end
  if i == 0
    return "zero"
  end

  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  #testing millions
  left = i
  write = left / 1000000
  left = left % 1000000

  if write > 0
    millions = i_to_s(write)
    output = output + millions + " million"
    output = output + " and " if left > 0
  end

  #testing thousands 
  
  #left = i
  write = left / 1000
  left = left % 1000

  if write > 0
    thousands = i_to_s(write)
    output = output + thousands + " thousand"
    output = output + " and " if left > 0
  end

  #end test thousands

  #left = i
  write = left / 100
  left = left % 100

  if write > 0
    hundreds = i_to_s(write)
    output = output + hundreds + " hundred"
    output = output + " and " if left > 0
  end

  write = left / 10
  left = left % 10

  if write > 0
    if write == 1
      output = output + teens[left]
    else
      output = output + tens[write - 1]
      output = output + "-" + ones[left - 1] if left > 0
    end
  elsif left > 0
    output = output + ones[left - 1]
  end
  output
end

puts i_to_s(input).capitalize

i = input

# bottles of beer
while i > 0
  temp = i_to_s(i)
  puts temp.capitalize + " bottles of beer on the wall, " + temp + " bottles of beer. Take one down, pass it around, " + i_to_s(i - 1) + " bottles of beer on the wall."
  i -= 1
end


