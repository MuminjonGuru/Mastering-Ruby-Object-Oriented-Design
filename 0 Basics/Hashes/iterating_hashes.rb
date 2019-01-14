pizza = {
  "style" => "New York",
  "slices" => 8,
  "diameter" => "15 inches",
  "toppings" => ["mushrooms", "green peppers"],
  "is_tasty" => true
}

pizza.each_value do |val|
  puts val
end
