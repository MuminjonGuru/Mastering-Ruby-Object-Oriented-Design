def reverse(str)
  return str if str.length <= 1
  str[-1] + reverse(str[0..-2])
end

p reverse("hello")
