class River

  attr_reader :name, :fish_array

  def initialize(name)
    @name = name
    @fish_array = []
  end

  def fill_river(newfish)
    @fish_array << newfish
  end

  def fish_count
    return @fish_array.length
  end

end
