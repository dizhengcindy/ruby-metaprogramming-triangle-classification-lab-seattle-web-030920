class Triangle
  # write code here
attr_reader :a,:b,:c
  def initialize(a,b,c)
    @a = a 
    @b = b
    @c = c
  end

  def kind
    if (@a <=0 || @b <= 0 || @c <=0 || @a+@b <= @c || @a+@c <= @b || @b+@c <= @a)
        raise TriangleError
    else
      if @a==@b && @b==@c 
        :equilateral
      elsif @a==@b || @b==@c || @a==@c 
        :isosceles
      elsif @a!= @b && @a!=@c && @c!=@b
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    # triangle error code
      # def message
      #   puts "violating triangle inequality are illegal."
      # end
  end

end
