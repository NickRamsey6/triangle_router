require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get ('/') do
  @triangles = Triangle.all
  erb(:triangles)
end

get ('/triangles') do
  @triangles = Triangle.all
  erb(:triangles)
end

get ('/triangles/new') do
  erb(:new_triangle)
end

post ('/triangles') do
  side1 = params[:side1]
  side2 = params[:side2]
  side3 = params[:side3]
  triangle = Triangle.new(side1, side2, side3)
  triangle.save()
  @triangles = triangle.is_triangle
  erb(:results)
end
