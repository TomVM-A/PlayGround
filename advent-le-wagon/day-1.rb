# require "byebug"
# leer el archivo
input_file = File.open("input.txt")
# se crea array vacio donde guardar los subarrays
array = []
# se crea array vacio, donde se guardaran los valores realcionados
subarray = []
# se lee le archivo y se divide por el cambio de linea => array
data_string = input_file.read.split("\n")

# data_string = input_file.readlines

# se recorre el array

data_string.each do |element|
#   # se verifica que cumpla la condición
# byebug
  unless element.empty?
#     # se guarda valor asociado en el array si no cumple condicion
    subarray << element.to_i
  else
#    # si cumple condición se guardan los valores asociados hasta ese momento y se reinicia
#     # el array de valores asociados
    array << subarray
    subarray = []
  end
end
array << subarray if !subarray.empty?
array_f = array.map{|element| element.sum}

# p data_string
# p array
p array_f.sort
p array_f.sort.last(3).sum
