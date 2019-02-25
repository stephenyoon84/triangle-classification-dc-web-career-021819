class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def kind
    if self.a <= 0 || self.b <= 0 || self.c <= 0
      raise TriangleError
    elsif self.a + self.b <= self.c || self.a + self.c <= self.b || self.c + self.b <= self.a
      raise TriangleError
    elsif self.a == self.b && self.b == self.c
      return :equilateral
    elsif self.a == self.b || self.b == self.c || self.a == self.c
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end
end
