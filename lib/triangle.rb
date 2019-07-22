require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def is_triangle

    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      "This is not a triangle!"
    end
  end

  def is_equilateral
    if @side1 = @side2 & @side1 = @side3 & @side2 = @side3
      'This is an equilateral triangle'
    end
  end

  def is_isosceles
    if @side1 = @side2 || @side1 = @side3 || @side2 = @side3
      'This is an isosceles triangle'
    end
  end

  def is_scalene
    if @side1 != @side2 && @side1 != @side3  && @side2 != @side3
      'This is an scalene triangle'
    end
  end

end
