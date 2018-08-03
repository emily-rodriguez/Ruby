fruit_string = "boulder, apple, banana, peach, cow"

fruit = fruit_string.split(", ")
fruit.pop
fruit.shift
puts fruit.join(", ")

def with_these_numbers(first_number, second_number)
  yield first_number,second_number
end

with_these_numbers(1, 4) { |first, second| puts first + second}
with_these_numbers(3, 6) { |first, second| puts first * second}
with_these_numbers(12, 3) { |first, second| puts first / second}