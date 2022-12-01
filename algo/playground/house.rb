require_relative "building"

class House < Building

  # Si al crear un metodo en la clase hija con el mismo nombre que el del padre
  # lo que hace es que cuando llamemos el metodo sobre un objeto de la clase hija
  # este primero buscara en la clase hija y al encontrarlo lo ejecutara pero no
  # no ejecutara la del papa, por lo que rompio la herencia. Pero hay una manera
  # para que podamos ejecutar el metodo del padre y ademas añadirle algo lo que
  # podemos hacer es crear un  metodo con el mismo nombre y dentro del metodo
  # colocamos la palabra super y le añadimos lo que le queremos añadir

  # def floor_area
  #   # "Ahora estoy llamando al metodo floor_area de la clase House"
  #   "La superficie total es de #{super + 20}"
  # end

end

casa1 = House.new("LaFlorida",100,200)
p casa1
p casa1.floor_area


# pundint gema que permite sobre escribir los metodos de las clases
