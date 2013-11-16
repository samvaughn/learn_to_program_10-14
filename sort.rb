def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end

  smallest             = unsorted_array.pop
  still_unsorted_array = []

  unsorted_array.each do |word|
    if word < smallest
      still_unsorted_array.push smallest
      smallest = word
    else
      still_unsorted_array.push word
    end
  end

  sorted_array.push smallest

  recursive_sort still_unsorted_array, sorted_array
end

puts(sort(['Bubbia', 'Samo', 'Re', 'JO', 'Jooj', 'Chib', 'Gub', 'Rosy', 'Lum']))