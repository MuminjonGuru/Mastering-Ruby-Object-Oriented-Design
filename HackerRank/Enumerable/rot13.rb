def rot13(secret_messages)
  secret_messages.map { |msg| msg.tr("a-z", "n-za-m")}
end

# https://en.wikipedia.org/wiki/ROT13

# ROT13 cipher system
