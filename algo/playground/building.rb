class Building
  #Constructor
  def initialize(name, width, length)
    @name = name
    @width= width
    @length = length
  end

  def floor_area
    @width * @length
  end
end
