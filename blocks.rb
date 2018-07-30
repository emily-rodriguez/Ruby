def my_method
  puts "We're in the method, about to invoke your block!"
  yield
  puts "We're back in the method!"
end

my_method do
  puts "We're in the block!"
end

def take_this
  yield "present"
end

take_this do |thing|
  puts "do/end block got #{thing}"
end

take_this { |thing| puts "braces block got #{thing}"}

alphabet = ["a", "b", "c"]

alphabet.each { |param| puts param}