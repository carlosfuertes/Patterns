
## example adapted from http://stackoverflow.com/questions/746207/ruby-design-pattern-how-to-make-an-extensible-factory-class
## the base is its own factory

class Shape
  @@allowed_shapes = {}

  def self.create type
    shape = @@allowed_shapes[type]
    if shape
      shape.new
    else
      raise "unknown shape: #{type}"
    end
  end

  def self.register_shape type
    @@allowed_shapes[type] = self
  end

end


class SquareShape < Shape
  register_shape :square
  def display
    puts "I'm a square!"
  end
end

class CircleShape < Shape
  register_shape :circle
  def display
    puts "I'm a circle!"
  end
end
