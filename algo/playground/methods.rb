def greet(name, lastname) # parametros, si definimos parametros tendremos que pasar argumentos si no, habran errores
  "hello #{name} #{lastname}" # #{} interpolación
end

puts greet("juan","perez") # argumentos
# Cuando yo defino con una o mas variables los argumentos, se llaman argumentos
# posicionales, por que ahora toman una posición y deben ser agregados en ese orden

# argumentos posicionales con valores por defecto
def ordenar(nombres, orden = "ascendente")
  # en nombres voy a recibir un array con varios nombres
  if orden == "ascendente"
    # ordeno de manera ascendente A-Z
    nombres.sort
  else
    # ordeno de manera descendente Z-A
    nombres.sort.reverse
  end
end

nombres = ["pedro","juan","diego"]

#  se llama la función con un solo argumento auque le defini dos parametros pero,
# igualmente va a funcionar porque la segunda variable ya tiene un valor pro defecto
# entonces si no le entregramos este segundo valor, el metodo no se rompera por que
# ya toma un valor para esta segunda variable
puts ordenar(nombres)


# forma de pasar argumentos
# Argumentos de palabras claves, es poner un parametro de la siguiente manera

def sumar(primer_numero:0, segundo_numero:0)
  primer_numero + segundo_numero
end

# si lo corro, al llamarlo va a dar 0, no error, si no un resultado
# de acuerdo a como lo definimos
puts sumar


# entregamosle un valor entonces
# --> puts sumar(3) # esto nos arrojara error

# esto paso por que estamos usando argumentos de palabras claves, así que cuando
# vamos a ingresar un argumento adicional del valor debemos ingresar el valor que le corresponde

puts sumar(primer_numero:3)# esto nos dara 3

# Notar que no va a arrojar error, es decir no estamos obligados a pasarle todas
# las variables con la que lo definimos, ya que también cuenta como un valor
# predefinido


###########

# Parametro array, esto lo hago colocando un asterisco antes del nombre de la
# variable, esto nos es util cuando sabemos que el usuario puede agregar 0 o varios
# valores. el *variable le dice a ruby preparese para crear un array con pocos o
# muchos valores

# Quiero calcular el promedio de notas de un colegio
def calcular_promedio(*califiaciones)
  califiaciones.sum / califiaciones.count
end
# Recibo las notas

puts calcular_promedio(5,4,5,6,7)

#######

#Bloques
# {}
# do end

# si quiero saludar 3 veces
3.times {puts "hola a todos"} # Bloque

# Si necesito hacer más de una linea de instrucción entonces utilizo el do end
3.times do
  puts 'Hola'
  puts 'a'
  puts 'todos'
end

# YIELD, si uso un yield y no le paso un bloque, el metodo se va a caer

def quien_soy
  yield # yield = soy un bloque de codigo
end

puts quien_soy {"soy un bloque de codigo"}

# para evitar los errores con YIELD en caso de que no nos pase un bloque
# para eso utilizamos el block_given?

def quien_soy2
  block_given? ? yield : "No me pasaron ningun bloque"
end


puts quien_soy2 {"Soy un bloque 2"}
