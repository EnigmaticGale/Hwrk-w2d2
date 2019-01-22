require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')


class BearTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Tim")
    @fish2 = Fish.new("Erik")
    @river1 = River.new("Amazon")

    @river1.fill_river(@fish1)
    @river1.fill_river(@fish2)

    @bear1 = Bear.new("Dio", "Grizzly")
  end

  def test_get_bear_name
    assert_equal("Dio", @bear1.name)
  end

  def test_get_bear_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_bear_hunt
    assert_equal(@river1.fish_array.length, 2)
    @bear1.hunt(@river1)
    assert_equal(@bear1.food_stash[0].name, "Erik")
    assert_equal(@river1.fish_array.length, 1)
  end

  def test_roar
    assert_equal("MUDAMUDAMUDA", @bear1.roar)
  end

  def test_snacks()
    assert_equal(0,@bear1.snacks)
  end

end
