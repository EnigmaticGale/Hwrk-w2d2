require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')


class BearTest < MiniTest::Test

  def setup()
    @fishy = Fish.new("Tim")
  end

  def test_get_name
    assert_equal("Tim", @fishy.name)
  end

end
