# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort(array)
  sorted = false  # when this var is false, that means the array is not fully sorted yet

  while !sorted       # while the array is not sorted...
    sorted = true       # reset the sorted flag to true

    # the each below will perform a single 'pass' of bubble sort
    (0...array.length - 1).each do |i|
      if array[i] > array[i + 1]                              # if adjacent elements are out of order...
        array[i], array[i + 1] = array[i + 1], array[i]     #   then swap their positions
        sorted = false                                      # since we just made a swap, we may need to perform
      end                                                     # an additional 'pass', so set the flag to false
    end
  end

  array
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]