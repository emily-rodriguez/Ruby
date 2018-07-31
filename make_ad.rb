# review_file = File.open("reviews.txt")
#
# lines = review_file.readlines
# lines.each { |line| puts line}
#
# review_file.close

lines = []

File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end

relevant_lines = lines.find_all { |line| line.include?("Truncated") }

reviews = relevant_lines.reject { |line| line.include?("--") }

puts reviews

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end

adjective = find_adjective(reviews.first)

puts adjective