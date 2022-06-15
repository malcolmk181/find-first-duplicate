def find_first_duplicate(arr)
  hash = Hash.new

  arr.each { |num| hash[num] ? (return num) : hash[num] = true }

  -1
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  # Don't forget to add your own!

  puts

  puts "Expecting: 1"
  puts "=>", find_first_duplicate([1, 2, 3, 4, 5, 6, 7, 8, 9, 1])

  puts

  puts "Expecting: 2"
  puts "=>", find_first_duplicate([1, 2, 3, 4, 2, 1])
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# The problem
# Given an array of integers, find the first number that is repeated
# If no numbers are repeated, return -1

# Pseudocode
# Initialize an empty hash
# Loop through the elements of the array
    # if the element is not in the hash as a key, add it
    # if the element is in the hash as a key, return that element
# if the loop completes, return -1