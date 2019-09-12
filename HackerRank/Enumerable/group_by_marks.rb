def group_by_marks(marks, pass_marks)
  marks.group_by { |k, v| v < pass_marks ? "failed" : "passed" }
end
