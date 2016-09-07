require "base64"
require "benchmark"
require "digest"
require "find"
require "timeout"


code = Base64.encode64("Ruby")
puts code
puts Base64.decode64(code)

puts Benchmark.measure {"a"*1_000_000_000}
class Dorm

Find.find(ENV["HOME"])

puts Digest::MD5.digest("Ruby")
Timeout.timeout(1) {
  "a" * 1_000_000
}
end


class Point
  require "math"
  include Comparable

  def initialize x:, y:
    @x = x
    @y = y
  end

  def quarter
    if self.x == 0 or self.y == 0
      return 0
    elsif self.x > 0
      if self.y > 0
        return 1
      else
        return 4
      end
    else
      if self.y > 0
        return 2
      else
        return 3
      end
    end
  end

  def similar_quarter? other_point
    self.quarter == other_point.quarter
  end

  def origin?
    return self.x==0 and self.y==0
  end

  def origin
    self.x = 0
    self.y = 0
  end

  def + other_point
    return Point.new(self.x + other_point.x, self.y + other_point.y)
  end

  def distance
    return Math.sqrt(self.x ** 2 + self.y ** 2)
  end


  def <=> other_point
    result = nil
    if other_point.class = self.class
      if self.distance < other_point.distance
        result = -1
      elsif self.distance == other_point.distance
        result = 0
      else
        result = 1
      end
    end
    result
  end

end

class Rectangle
  require "math"
  def initialize start_point, end_point
    @start_point = start_point
    @end_point   = end_point
  end

  def area
    return Math.abs((@start_point.x-@end_point.x)*(@start_point.y - @end_point.y))
  end

  def perimeter
    return 2 * (Math.abs(@start_point.x-@end_point.x) + Math.abs(@start_point.y - @end_point.y))
  end

end
