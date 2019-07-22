require ('pry')

class Triangle
  attr_accessor :side1, :side2, :side3

  @@triangles = {}
  # @@total_rows = 0
  def initialize(side1, side2, side3)
    @side1 = side1.to_i
    @side2 = side2.to_i
    @side3 = side3.to_i
    # @id = id || @@total_rows +=1
  end

  def is_triangle
    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      "This is not a triangle!"
    elsif @side1 == @side2 && @side1 == @side3 && @side2 == @side3
      'This is an equilateral triangle'
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      'This is an isosceles triangle'
    elsif @side1 != @side2 && @side1 != @side3  && @side2 != @side3
      'This is an scalene triangle'
    end
  end

  def self.all
    @@triangles.values()
  end

  def save
    @@triangles[self] = Triangle.new(self.side1, self.side2, self.side3)
  end
end
