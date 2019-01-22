require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')


class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Tim")
    @fish2 = Fish.new("Erik")
    @river = River.new("Amazon")
  end

  def test_get_name()
    assert_equal(@river.name,"Amazon")
  end

  def test_get_a_fish
    @river.fill_river(@fish1)
    assert_equal("Tim", @river.fish_array[0].name)
  end

  def test_fish_count
    @river.fill_river(@fish1)
    @river.fill_river(@fish2)
    assert_equal(2, @river.fish_count)

  end

end
