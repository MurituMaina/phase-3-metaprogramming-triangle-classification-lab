require 'pry'
class Triangle
  # write code here
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def kind
    triangle_validate
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles
      else
        :scalene
      end
  # else
  #   raise TriangleError;
  # end
  end


  def  side_equal_zero?
 @side1 > 0 && @side2 > 0 && @side3 > 0
  end

  def triangle_inequality?
     @side1 + @side2 > @side3 && @side1 + @side3 >  @side2 && @side2 + @side3 > @side1

  end

  def triangle_validate
  raise TriangleError unless triangle_inequality? && side_equal_zero?
  end
  class TriangleError < StandardError
  
  end
end

# binding.pry