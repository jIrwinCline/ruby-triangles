require 'rspec'
require 'triangles'

describe("#triangle") do
  before(:each) do
  Triangle.clear()
  end
  it("will return true if it is a triangle") do
    tri = Triangle.new(4,8,2)
    expect(tri.triangle?).to(eq(false))
  end
  it("push triangle if the method says there is a triangle") do
    tri = Triangle.new(4,8,6)
    expect(tri.confused_triangle).to(eq(true))

  end
  it("show a populated array if triangle was a triangle") do
    tri = Triangle.new(4,8,7)
    expect(Triangle.all()).to(eq([tri]))
  end
  it("show a populated array if triangle was a triangle") do
    tri = Triangle.new(4,8,6)
    expect(tri.type?).to(eq('scalene'))
  end
end
