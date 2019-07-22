require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('pry')
require('./lib/triangles')

get ('/') do
  @triangles = Triangle.all
    erb(:triangles)
end

get ('/triangles') do
  binding.pry
  @triangles = Triangle.all
    erb(:triangles)
end

get ('/triangles/new') do
  erb(:new_triangle)
end

get ('/triangles/:id') do
  "This route will show a specific album based on its ID. The value of ID here is #{params[:id]}."
end

post ('/triangles') do
  triangle = Triangle.new(params[:s1],params[:s2],params[:s3])
  triangle.save()
  @triangles = Triangle.all()
  erb(:triangles)
end

get ('/triangles/:id/edit') do
  "This will take us to a page with a form for updating an album with an ID of #{params[:id]}."
end

patch ('/triangles/:id') do
  "This route will update an album. We can't reach it with a URL. In a future lesson, we will use a form that specifies a PATCH action to reach this route."
end

delete ('/triangles/:id') do
  "This route will delete an album. We can't reach it with a URL. In a future lesson, we will use a delete button that specifies a DELETE action to reach this route."
end

get ('/custom_route') do
  "We can even create custom routes, but we should only do this when needed."
end
