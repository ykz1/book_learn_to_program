puts "input your words. end with an empty entry."

arr_input = []

while true do
  input = gets.chomp
  if input == ""
    break
  else
    arr_input.push(input)
  end
end

def sort(array)
  alt_array = []
  array.each { |i| alt_array.push(i) }
  recursive_sort(alt_array, [])
end

def recursive_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  alt_unsorted = []

  unsorted.each do |temp|
    if temp.downcase < smallest.downcase
      alt_unsorted.push(smallest)
      smallest = temp
    else
      alt_unsorted.push(temp)
    end
  end

  sorted.push(smallest)

  recursive_sort(alt_unsorted, sorted)
end

puts "Sorted: " + sort(arr_input).join(" ")
