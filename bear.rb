class Bear

  attr_reader :name, :type, :food_stash


  def initialize(name, type)
    @name = name
    @type = type
    @food_stash = []
  end

  def hunt(river)
    prey = river.fish_array.pop
    @food_stash << prey
  end

  def roar
    return "MUDAMUDAMUDA"
  end

  def snacks
    return @food_stash.length
  end

end
