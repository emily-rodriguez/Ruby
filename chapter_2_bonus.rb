#HTML methods

def paragraph(string)
  "<p>#{string}</p>"
end

def image(src, width = 100, height = 100)
  "<img src='#{src}' width='#{width}' height='#{height}'/>"
end

puts paragraph("Hello World")
puts image("picture.jpg", 500, 400)

#Rectangle class

class Rectangle
  attr_reader :width, :height

  def width=(value)
    if value < 0
      raise "Width can't be negative"
    end
    @width = value
  end

  def height=(value)
    if value < 0
      raise "Height can't be negative"
    end
    @height = value
  end

  def area
    width * height
  end

end

rectangle = Rectangle.new
rectangle.width = 2
rectangle.height = 4
puts rectangle.area

#Validation


