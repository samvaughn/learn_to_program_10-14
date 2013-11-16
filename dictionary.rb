def dictionary_sort arr
  rec_dict_sort arr, []
end

def rec_dict_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest       = unsorted.pop
  still_unsorted = []

  unsorted.each do |test_object|
    if test_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = test_object
    else
      still_unsorted.push test_object
    end
  end

  sorted.push smallest

  rec_dict_sort still_unsorted, sorted
end

puts(dictionary_sort(['fun', 'dad', 'Ben', 'here', 'to', 'you', 'Tim', 'Meg', 'go',
 'can', 'come', 'I', 'we', 'help', 'have', 'Pat', 'and', 'me', 'mom']))