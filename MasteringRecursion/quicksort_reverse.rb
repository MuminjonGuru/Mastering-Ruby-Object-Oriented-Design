def quick_sort(arr)
  return arr if arr.length <= 1
  pivot_arr = [arr.first]
  left_side = arr[1..-1].select { |el| el < arr.first }
  right_side = arr[1..-1].select { |el| el >= arr.first }
  quick_sort(left_side) + pivot_arr + quick_sort(right_side)
end

p quick_sort([4,2,1,5,6,12,12])
