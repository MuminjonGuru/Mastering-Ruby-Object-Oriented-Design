def bubble_sort_by array
  is_sorted = false
  digits = (0..array.length - 2)

  until is_sorted
    is_sorted = true
    digits.each do |i|
      block = yield(array[i], array[i + 1])
      if block > 0
        array[i], array[i+1] = array[i+1], array[i]
        is_sorted = false
      end
    end
  end
  print array
end

bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length}
