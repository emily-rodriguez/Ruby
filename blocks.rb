def my_method
  puts "We're in the method, about to invoke your block!"
  yield
  puts "We're back in the method!"
end

my_method do
  puts "We're in the block!"
end

