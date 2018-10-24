# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
    # WRITE THIS CODE
  if (a <= 0) or (b <= 0) or (c <= 0)
    raise TriangleError, "Sides have to be greater than zero"
  end

  if (a + b <= c) or (a + c <= b) or (b + c <= a)
    raise TriangleError, "Any two sides of a triangle should add up to more than the third side."
  end
  #if (a == 1) && (b == 1) && (b == 3)
  #  raise TriangleError, "Any two sides of a triangle should add up to more than the third side."
  #end
  #if (a == 2) && (b == 4) && (b == 2)
  # raise TriangleError, "Any two sides of a triangle should add up to more than the third side."
  #end

  if a == b && b == c
    :equilateral
  elsif (a == b && b != c) or (a != b && b == c) or (c == a && a != b)
    :isosceles
  else a != b && b != c
    :scalene
  end
end
# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end

# https://blog.honeybadger.io/a-beginner-s-guide-to-exceptions-in-ruby/
