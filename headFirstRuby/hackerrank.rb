def rot13(secret_messages)
  secret_messages.map { |m| m.tr!("a-z", "n-za-m")}
end

array = ["Why", "did", "the", "chicken", "cross", "the", "road?"]
puts rot13(array)