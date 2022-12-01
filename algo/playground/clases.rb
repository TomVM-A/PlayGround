# paradigma, es un cambio de un concepto en 180°
# Eso paso con la programación orientada a objetos POO
# La programación anterior a la POO se conoce como programación de procedimientos
# que consiste en ejecutarse un proceso detras de otro

# Todas las clases pueden o no tener atributos (caracteristicas) y metodos (acciones)

class Persona
  # Constructor, me permite definir cierta variables que yo puedo utilizar para
  # crear mis funciones
  def initialize(nombre, apellido, edad, nacionalidad)
    # Estas son variables de instancia, se pueden utilizar dentro de toda la clase
    #
    @nombre = nombre
    @apellido = apellido
    @edad = edad
    @nacionalidad = nacionalidad
  end

  # Acciones
  def saludar
    "Hola"
  end

  def dormir
    "Zzzzzzz"
  end

  private # lo que sigue aquí solo se podra utilizar dentro de la clase
  def salir_de_fiesta
    "A bailar... Yupi"
  end
 # También hay como el privado, el por default public, el protected que tiene
 # más niveles de protección que es como una caja negra, que lo puedo llamar desde otras clases
 # pero no necesariamente directamente desde otra instancia. Seria como si yo te presto la pelota
 # para que juegues con ella pero no sabras de que esta hecha, es decir se puede
 # heredar pero la otra clase no tiene idea de como funciona, no se podra modificar
 # desde la otra clase
end


# Instanciar un objeto  se refiere a crear un nuevo objeto de la clase nn
# Siempre que instancio debo  procurar crear una varible  para luego utilizar los datos

persona1 = Persona.new("Juan", "Perez", 30, "Colombiano")
puts persona1.saludar #metodos de instancia


# Además de la herencia en POO también esta el polimorfismo, encapsulamiento   y más

# En Rails las variables de instancia solo funcionan dentro del metodo, no funcionan
# en otros metodos, el constructor lo trae por dentro, lo hace él
# Rails trabaja sobre la convención, en Rails, si no le colocamos el @ en la variable
# la variable no se puede usar en la vista

# En las clases, el metodo de initializar cuando me permite crear las variables
# de instancia, pero no me permite modificarlas o acceder a ellas, pero esto lo
# puedo hacer al crear metodos para tales fines, o utilizar el attr_writer, attr_reader
# Tambien esta el attr_accessor que permite hacer lo que las otras dos pero ademas me
# permiten instanciar otro varible de instacia y no hay necesidad de pasarla en el
# momento de crear el objeto 

# modulos vs clases, yo puedo crear una clase con cierto comportamiento
# pero cuando necesito que ese comportamiento se aplique en muchas cosas
# para esos casos yo uso los modulos, aquí aplican los mixin
