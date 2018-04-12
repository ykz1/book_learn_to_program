#10.3 Shuffle

puts "input a bunch of stuff. enter a blank to end"
arr_input = []
arr = []

# Get user inputs for array
while true do
  input =gets.chomp

  if input == ''
    break
  else
    arr_input.push(input)
  end
end

# Main sort
def sort(array)
  recursive_sort(array, [])
end

# Recursive sort within main sort
def recursive_sort(unsorted, sorted)
  if unsorted.length <= 0 then
    return sorted
  end

  smallest = unsorted.pop
  alt_unsorted = []

  unsorted.each do |temp|
    if temp < smallest
      alt_unsorted.push(smallest)
      smallest = temp
    else
      alt_unsorted.push(temp)
    end
  end

  sorted.push(smallest)

  recursive_sort(alt_unsorted, sorted)
end

# Shuffle
def shuffle(arr)
shuffled = []
  while arr.length > 0 do
    dex = rand(arr.length)
    shuffled.push(arr[dex])
    arr.delete_at(dex)
  end
return shuffled
end

arr = []
arr_input.each { |i| arr.push(i) }
puts 'Sorted: ' + sort(arr).join(' ')
puts 'Original after sort: ' + arr_input.join(' ')

10.times do |j|
  arr = []
  arr_input.each { |i| arr.push(i) }
  puts "Shuffle #{j}: " + shuffle(arr).join(' ')
end

puts 'Original after shuffle: ' + arr_input.join(' ')

