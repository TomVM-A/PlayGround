require_relative "building"

class Castle < Building
  def self.categories # vamos a crear un metodo de clase
    ["Medieval","Ancient","Gótico"]
  end
end

castillo1 = Castle.new("Hogwarts",300,500)
p castillo1
