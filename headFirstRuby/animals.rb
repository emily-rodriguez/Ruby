class Animal
  attr_reader :name, :age

  def name=(value)
      if value == ""
        raise "Name can't be blank!"
      end
      @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

class Dog < Animal
  def to_s
    "#{@name} the dog, age #{age}"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

class Bird < Animal
  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end

dog = Dog.new
dog.name = "Daisy"
dog.age = 3
dog.report_age
dog.talk
dog.move("bed")
puts dog.to_s

tex = Armadillo.new
tex.name = "Tex"
tex.age = 2
tex.move("other side of the road")


# class Robot
#   attr_accessor :name
#   def activate
#     puts "#{@name} is powering up"
#   end
#
#   def move(destination)
#     puts "#{@name} walks to #{destination}"
#   end
# end
#
# class SolarBot < Robot
#
#   def activate
#     puts "#{@name} deploys solar panel"
#     super
#   end
#
# end
#
# sunny = SolarBot.new
# sunny.name = "Sunny"
# sunny.activate