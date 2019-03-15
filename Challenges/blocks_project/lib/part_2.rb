def all_words_capitalized?(words)
  words.all? {|word| word.capitalize == word}
end

def no_valid_url?(urls)
  rules = ['.com', '.net', '.io', '.org']
  urls.none? do |url|
    rules.any? { |ending| url.end_with?(ending) }
  end
end

def any_passing_students?(students)
  students.any? do |student|
    grades = student[:grades]
    avg = grades.sum / (grades.length * 1.0)
    avg >= 75
  end
end