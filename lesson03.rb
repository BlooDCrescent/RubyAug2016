# Hash

hash = {one: 1, two: 2, three: 3}

hash.delete_if do |key, value|
  value > 2
end
p hash


hash.empty?


hash = {one: {two: {three: 3}}}
puts hash.dig(:one, :two, :three)



#===============================SYMBOL===================
p Symbol.all_symbols
puts :c <=> :b

class Symbol
  def between?(symbol1, symbol2)
    if (self <=> symbol1)== 1 and (self <=> symbol2) == -1
      return true
    end
    if
      (self <=> symbol2)== 1 and (self <=> symbol1) == -1
      return true
    end
    false
  end
end


puts :b.between?(:a, :c)
puts :b.between?(:c, :a)
puts :a.between?(:b, :c)



#--------------------FILE-------------------------
puts File.absolute_path("lesson03.rb")
puts File.directory?("lesson03.rb")
puts File.exist?("lesson03.rb")
puts File.mtime("lesson03.rb")




#----------------------TIME----------------------
puts Time.now
puts Time.now.friday?
puts Time.now.zone




elements = [:one, :two, :three, :four]

def combinations *args, group_size
  all = []
  current = []
  def subcombo start, length_left, all, current, args
    for i in start...(args.length)
      current.push(args[i])
      if length_left == 1
        all.push(current.clone)
      else
        subcombo(start + 1, length_left - 1, all, current, args)
      end
      current.pop()
      start += 1
    end
  end
  subcombo(0, group_size, all, current, args)
  return all
end

print combinations(*elements, 3)
