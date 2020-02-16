class Array

  def quicksort
    return self.dup if self.length <= 1

    pivot = self.first
    left = self.drop(1).select { |el| el < pivot }
    right = self.drop(1).select { |el| el >= pivot }

    sorted_left = left.quicksort
    sorted_right = right.quicksort
    
    sorted_left + [pivot] + sorted_right

  end

end

p [2,4,1,5,3,21,523,12,22,0].quicksort
