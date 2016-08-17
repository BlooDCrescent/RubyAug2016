# Fixnum
# Увеличивает число на единицу
1.next 		#=> 2
# Проверяет, является ли число нулём
2.zero? 		#=> false
# Возвращает модуль числа
-12345.abs 		#=> 12345

# Float
# Округляет вниз
3.14.floor 		#=> 3
# Возвращает массив с целой частью и остатком от деления
3.14.divmod(2) 		#=> [1, 1.1400000000000001]

# String
# Приводит к нижнему регистру

"Privet".downcase 		#=> "privet" (только ASCII символы)

# Следующий символ
"-".next 		#=> "."
# Удаляет пробелы слева и справа
"        текст        ".strip 		#=> "текст"

# Array
# Удаляет все элементы, равные заданному
a = [1, 1, 1, 2, 3, 4, 5]
a.delete(1)  		#=> a = [2, 3, 4, 5]
# Случайно переставляет элементы массива
a.shuffle! 		#=> Результат случаен
# Объединить все элементы в строку
a.join

# Hash
b = {1 => "один", 2 => "два"}
# Проверить наличие ключа в хэше
b.has_key?(1) 		#=> true
# Объединить два хэша в один
b.merge({3 => "три"})		 #=> {1=>"один", 2=>"два", 3=>"три"}

# Range
c = 0..100
# Метод, возвращающий максимальное значение диапазона
c.max 		#=> 100


results = [10, 2, 5, 12, 11, 11, 4]
count = 1
puts "Количество очков по партиям"
puts "==========================="
for sum in results
  puts "Партия: #{count} / Выпало очков: #{sum}"
  count = count.next
end


# Туристической группы				Array
# Количества денег на счету в банке 			BigDecimal
# Списка книг и их количества				Hash
# Признака есть ли у человека суперспособности			Boolean
# Количества соток для участка				Fixnum
# Количества очков жизни игрока				Fixnum	
# Имени пользователя			String
# Содержания поста				String
# Возрастной категории				Range
# Названия социальной сети, которое будет использоваться в коде по всему проекту		Symbol


class String
	def - value
		self.delete! value	
	end
end
