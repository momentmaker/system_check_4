require 'pry'

class BoundingBox
  attr_reader :width, :height, :left, :right, :top, :bottom

  def initialize(x, y, width, height)
    @width = width
    @height = height
    @left = x
    @right = x + width
    @top = y + height
    @bottom = y
  end

  def hit_x?(x)
    # binding.pry
    (x >= left && x <= right) ? true : false
  end

  def hit_y?(y)
    (y >= bottom && x <= top) ? true : false
  end

  def contains_point?(x, y)
    if (x >= left && x <= right) && (y >= bottom && y <= top)
      return true
    else
      return false
    end

    # hit_x?(x) && hit_y?(y) ? true : false
  end
end
