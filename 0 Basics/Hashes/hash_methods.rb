# Hash Methods
# .length
# .has_key?(k)
# .has_value?(v)
# .keys
# .values

dog = {
  "name" => "Fido",
  "color" => "black",
  "age" => 3,
  "isHungry" => true,
  "enemies" => ["squirrel"]
}

print dog["enemies"] << "mailman"

dog["location"] = "NY"
puts dog

print dog.has_key?("color")
print dog.has_value?("3")

print dog.keys
print dog.keys[1]
print dog.values
