def skip_animals(animals, skip)
  animals.map.with_index{|a, index| "#{index}:#{a}" if index >= skip}.compact
end
