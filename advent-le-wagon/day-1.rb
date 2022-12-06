#------------------- Day 2 -------------------

# ------------------ part 2
# A rock (1), B paper (2), C Scissors (3)
# Lose (0), Draw (3), Win (6)
# X lose, Y draw, Z win

def option_value(string)
  if string.include?("A")
    1
  elsif string.include?("B")
    2
  else
    3
  end
end

def strategy(elve_choice, our_choice)
  if our_choice.include?("Y")
    return elve_choice
  end
end

def result(elve_choice, strategy(our_choice))
  if option_value(our_choice)-option_value(elve_choice) == 0
    return 3
  elsif option_value(our_choice)-option_value(elve_choice) == 1 || option_value(our_choice)-option_value(elve_choice) == -2
    return 6
  else
    return 0
  end
end

input = File.read("input_day2.txt").split("\n").map {|battle| battle.split(" ")}
score = 0
input.each do |subarray|
  score += option_value(subarray[1])
  score += result(subarray[0], subarray[1])
end
# p input
# p input.class
p score

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
