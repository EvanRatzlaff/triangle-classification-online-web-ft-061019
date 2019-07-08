require 'pry'
class Triangle
attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3 
  end

  def kind
    if (length1 <= 0) || (length2 <=0) || (length3 <=0)
     # raise TriangleError
     
    
    if length1 == length2 && length2 == length3 && length1 == length3
      :equilateral
    elsif length1 != length2 && length2 != length3 && length3 != length1
      :scalene 
    else 
      :isosceles
    end 
    binding.pry
  end
  
  def triangle 
    length1.positive? && length2.positive? && length3.positive?
  end 

  def triangle2 
    length1 + length2 > length3 && length1 + length3 > length2 && length2 + length3 > length1
  end 
  class TriangleError < StandardError 
  
  end
end


