require ('rspec')
require ('triangle')
require('pry')

describe('#is_triangle') do
  it("returns NOT a Triangle") do
    triangle = Triangle.new(8,2,2)
    expect(triangle.is_triangle).to(eq("This is not a triangle!"))
  end

  it("returns a Equilateral Triangle") do
    triangle = Triangle.new(4, 4, 4)
    expect(triangle.is_triangle).to(eq('This is an equilateral triangle'))
  end

  it("returns a Isoscele Triangle") do
    triangle = Triangle.new(5, 5, 4)
    expect(triangle.is_triangle).to(eq('This is an isosceles triangle'))
  end
  it("returns a Scalene Triangle") do
    triangle = Triangle.new(2,3,4)
    expect(triangle.is_triangle).to(eq('This is an scalene triangle'))
  end

end
