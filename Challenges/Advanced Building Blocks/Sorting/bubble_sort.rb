def bubble_sort array
  is_sorted = false
  digits = (0..array.length - 2)

  until is_sorted
    is_sorted = true
    digits.each do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        is_sorted = false
      end
    end
  end
  print array
end

# Check the result
bubble_sort([2,41,61,0,1,24,124])
