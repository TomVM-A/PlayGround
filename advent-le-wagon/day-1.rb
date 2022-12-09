prueba = "input_day4.txt"

#------------------- Day 4 -------------------
# ------------------ part 2

input = File.read(prueba).split("\n").map{ |line| line.split(",").map{ |ranges| ranges.split("-").map{ |number| number.to_i } } }
ranges_that_overlap = 0

def overlap?(a,b,c,d)
  range_1 = (a..b)
  range_2 = (c..d)
  if range_1.include?(c) || range_2.include?(a) #|| (range_2.include?(a) || range_2.include?(b))
    return true
  else
    return false
  end
end

# we are going to supouse that each range is given like: minorvalue-maxvalue, so there shouldn't be maxvalue-minorvalue
input.each do |line|
  x_1 = line[0].first
  y_1 = line[0].last
  x_2 = line[1].first
  y_2 = line[1].last
  ranges_that_overlap += 1 if overlap?(x_1,y_1,x_2,y_2)
end

p ranges_that_overlap

# ------------------ part 1
# require "objspace"

# input = File.read(prueba).split("\n").map{ |line| line.split(",").map{ |ranges| ranges.split("-").map{ |number| number.to_i } } }
# ranges_that_include_their_pair = 0

# def is_in_the_other?(a,b,c,d)
#   range_1 = (a..b)
#   range_2 = (c..d)
#   if (range_1.include?(c) && range_1.include?(d)) || (range_2.include?(a) && range_2.include?(b))
#     return true
#   else
#     return false
#   end
# end

# # we are going to supouse that each range is given like: minorvalue-maxvalue, so there shouldn't be maxvalue-minorvalue
# input.each do |line|
#   x_1 = line[0].first
#   y_1 = line[0].last
#   x_2 = line[1].first
#   y_2 = line[1].last
#   ranges_that_include_their_pair += 1 if is_in_the_other?(x_1,y_1,x_2,y_2)
# end

# p ranges_that_include_their_pair


#------------------- Day 3 -------------------
# ------------------ part 2
# require "byebug"

# input = File.read("input_day3.txt").split("\n")

# priorities = {}
# letter_LowerCase = "a"
# for i in (1..26)
#   priorities[letter_LowerCase] = i
#   letter_LowerCase.succ!
# end
# letter_UpperCase = "A"
# for i in (27..52)
#   priorities[letter_UpperCase] = i
#   letter_UpperCase.succ!
# end

# def find_badge(string_1,string_2,string_3)
#   badge = 0
#   items = []
#   string_1.chars.each do |letter|
#     if string_2.include?(letter)
#       items << letter
#     end
#   end
#   items.each do |letter|
#     if string_3.include?(letter)
#       badge = letter
#     end
#   end
#   return badge
# end

# total = 0

# subarray = []
# input.each do |string|
#   # byebug
#   subarray << string
#   if subarray.length == 3
#     total += priorities[find_badge(subarray[0],subarray[1],subarray[2])]
#     subarray = []
#   end
# end

# p total
# # p input



# ------------------ part 1
# require "byebug"

# input = File.read("input_prueba.txt").split("\n").map{ |string|
#   mitad_2 = string[string.length/2..string.length]
#   string.partition(/#{mitad_2}/) }
#   # mitad_1 = string[0..string.length/2 - 1]
# input.map { |subarray| subarray.pop }
# priorities = {}
# letter_LowerCase = "a"
# for i in (1..26)
#   priorities[letter_LowerCase] = i
#   letter_LowerCase.succ!
# end
# letter_UpperCase = "A"
# for i in (27..52)
#   priorities[letter_UpperCase] = i
#   letter_UpperCase.succ!
# end

# def find_duplicated_item(string_1,string_2)
#   string_1.chars.each do |letter|
#     if string_2.include?(letter)
#       return item = letter
#     end
#   end
# end
# total = 0

# input.each do |subarray|
#   # byebug
#   total += priorities[find_duplicated_item(subarray[0],subarray[1])]
# end

# p total

#------------------- Day 2 -------------------

# ------------------ part 2
# A rock (1), B paper (2), C Scissors (3)
# Lose (0), Draw (3), Win (6)
# X lose, Y draw, Z win

# def option_value(string)
#   if string.include?("A")
#     1
#   elsif string.include?("B")
#     2
#   else
#     3
#   end
# end

# def strategy(elve_choice, our_choice)
#   if our_choice.include?("Y")
#     return elve_choice
#   else
#     if our_choice.include?("Z")
#       case option_value(elve_choice)
#       when 1
#         return "B"
#       when 2
#         return "C"
#       else
#         return "A"
#       end
#     else
#       case option_value(elve_choice)
#       when 1
#         return "C"
#       when 2
#         return "A"
#       else
#         return "B"
#       end
#     end
#   end
# end

# def result(elve_choice, response)
#   if option_value(response)-option_value(elve_choice) == 0
#     return 3
#   elsif option_value(response)-option_value(elve_choice) == 1 || option_value(response)-option_value(elve_choice) == -2
#     return 6
#   else
#     return 0
#   end
# end

# input = File.read("input_prueba.txt").split("\n").map {|battle| battle.split(" ")}
# score = 0
# input.each do |subarray|
#   response = strategy(subarray[0],subarray[1])
#   score += option_value(response)
#   score += result(subarray[0], response)
# end
# # p input
# # p input.class
# p score

# ------------------ part 1
# A & X rock (1), B & Y paper (2), C & Z Scissors (3)
# Lose (0), Draw (3), Win (6)
# Returns value of the option with the suspect guide

# def option_value(string)
#  if string.include?("X") || string.include?("A")
#     1
#  elsif string.include?("Y") || string.include?("B")
#     2
#  else
#     3
#  end
# end

# def result(elve_choice, our_choice)
#   if option_value(our_choice)-option_value(elve_choice) == 0
#     return 3
#   elsif option_value(our_choice)-option_value(elve_choice) == 1 || option_value(our_choice)-option_value(elve_choice) == -2
#     return 6
#   else
#     return 0
#   end
# end

# input = File.read("input_day2.txt").split("\n").map {|battle| battle.split(" ")}
# score = 0
# input.each do |subarray|
#   score += option_value(subarray[1])
#   score += result(subarray[0], subarray[1])
# end
# # p input
# # p input.class
# p score

#------------------- Day 1 -------------------
# require "byebug"
# leer el archivo
# input_file = File.open("input.txt")
# # se crea array vacio donde guardar los subarrays
# array = []
# # se crea array vacio, donde se guardaran los valores realcionados
# subarray = []
# # se lee le archivo y se divide por el cambio de linea => array
# data_string = input_file.read.split("\n")

# # data_string = input_file.readlines

# # se recorre el array

# data_string.each do |element|
# #   # se verifica que cumpla la condición
# # byebug
#   unless element.empty?
# #     # se guarda valor asociado en el array si no cumple condicion
#     subarray << element.to_i
#   else
# #    # si cumple condición se guardan los valores asociados hasta ese momento y se reinicia
# #     # el array de valores asociados
#     array << subarray
#     subarray = []
#   end
# end
# array << subarray if !subarray.empty?
# array_f = array.map{|element| element.sum}

# # p data_string
# # p array
# p array_f.sort
# p array_f.sort.last(3).sum
