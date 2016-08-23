puts 10000.fdiv(3) # Возвращает вещественный остаток от деления.
puts 1.odd? # Является ли число чётным.


puts 136.gcd(238) #Наибольший общий делитель.
1.upto 10 do |x|  # Позволяет итерировать от одного числа к другому.
  print x.to_s + ""
end
print "\n"
puts 10.rationalize #Приводит число к рациональному


11.step(100, 10) do |x| # Итерирует с указанием шага и верхнего предела
  puts x
end
puts -10.to_c # Приводит к комплексному числу


puts -0.13.to_s # Приводит число с плавающей запятой к строке (и не только с плавающей запятой)


array = [1, 2, 3]

puts array.pop() # Извлекает последний элемент из массива.
array.push(3) # Добавляет элемент в конец массива.
p array

puts " "
hash = {one: 1, two: 2, three: 3}

p hash.keys # Возвращает массив ключей
p hash.values # Возвращает массив значений


puts (1..20).exclude_end?
puts (1...20).exclude_end?


player = { name: 'johnny', color: :red }
colors = [:blue, :white, :green, :red, :orange, :dim]


def check_colors(player, colors)
  color = colors.sample
  if color == player[:color]
    puts "#{player[:name]}, ты прав!"
  elsif color.length == player[:color].length
    puts "#{player[:name]}, букв столько же, но значение иное!"
  else
    puts "Любое другое сообщение"
  end
end

check_colors(player, colors)


names = %w[ambientsketchbook Erik\ Wollo Brian\ Eno Evangelos\ Papathanassiou Shulman]
names.each do |x|
  if x.length < 10
    if x[0] == x[0].upcase
      puts x
    end
  end
end


langs = ["Ruby", "Python", "JavaScript", "Java", ".NET", "HTML", "Clojure"]

hash = langs.inject(Hash.new) do |hash, lang|
  hash[lang] = lang.length
  hash
end
p hash # В оригинальном массиве не было языка Go


def fib_cycle(n)
  if n <= 2
    1
  else
    first = 1
    second = 1
    while n > 2
      first, second = first + second, first
      n -= 1
    end
    first
  end
end

puts fib_cycle(6)

def fib_rec(n)
  if n <= 2
    1
  else
    fib_rec(n-1) + fib_rec(n-2)
  end
end

puts fib_rec(6)


cypher = 'Lbh unpxrq n irel frperg zrffntr!'


def rot(cypher, number)
  return cypher.chars.inject("") do |result, symbol|
    if symbol.ord > 64 and symbol.ord < 91
      result += (((symbol.ord - 65 - number) % 26)+65).chr
    elsif symbol.ord > 96 and symbol.ord < 123
      result += (((symbol.ord - 97 - number) % 26)+97).chr
    else
      result += symbol
    end
    result
  end
end
def rot13(cypher)
  return rot(cypher, 13)
end

print rot13(cypher) # You hacked a very secret message!
