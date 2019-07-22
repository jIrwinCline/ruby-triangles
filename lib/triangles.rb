require 'pry'
require 'fileutils'
require 'sinatra'

class Triangle
  attr_reader :id
  attr_accessor :type
  @@total_rows = 0
  @@triangles = {}
  def initialize(s1,s2,s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    @type = type?
    confused_triangle()
    @id = id || @@total_rows += 1
  end

  def type?
    if @s1 == @s2 && @s2 == @s3
      return 'equalateral'

    elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
      return 'isosceles'

    else
      return 'scalene'

    end
  end
  def self.all()
    @@triangles.values()
  end

  def self.clear()
    @@triangles = []
  end
  def self.any?
    if @@triangles.length > 0
      return true
    end
    false
  end

  def triangle?
    if (@s1 + @s2) <= @s3 || (@s1 + @s3) <= @s2 || (@s3 + @s2) <= @s1
      return false
    end
    true
  end

  def confused_triangle
    if triangle?
      save()
      true
    else
      puts "Thats not a triangle."
      false
    end
  end

  def save
    @@triangles[self.id] = self
  end
end
