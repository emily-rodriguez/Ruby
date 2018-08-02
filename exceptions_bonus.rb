def trip_over_curb
  raise "WHOA!"
end

begin
  trip_over_curb
rescue
  puts "Caught you!"
end

def send_sos
  raise "Latitude -50.75, Longitude 166.04"
end

begin
  send_sos
rescue => error
  puts "Sending rescue party to: #{error.message}"
end

class ThisError < StandardError
end

class ThatError < StandardError
end

class TheOtherError < StandardError
end

def random_failure
  number = rand(0..2)
  if number == 0
    raise ThisError, "Whoops!"
  elsif number == 1
    raise ThatError, "Uh, oh!"
  elsif number == 2
    raise TheOtherError, "Oh, no!"
  end
end

begin
  random_failure
rescue ThisError
  puts "I caught this!"
rescue ThatError
  puts "I caught that!"
rescue TheOtherError
  puts "I caught the other!"
end