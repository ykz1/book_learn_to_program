#10.2 My sort method

def sort(arr)
  recursive_sort(arr, [])
end

def recursive_sort(unsorted, sorted)
  if unsorted.length <= 0 then
    return sorted
  end

  smallest = unsorted.pop
  alt_unsorted = []

  unsorted.each do |temp|
    if temp < smallest
      alt_unsorted.push smallest
      smallest = temp
    else
      alt_unsorted.push temp
    end
  end

  sorted.push smallest

  recursive_sort(alt_unsorted, sorted)
end

arr = ["ab", "be", "qi", "co", "the", "be"]

puts sort(arr)
