require 'minitest/autorun'
require './bakery'

class BakeryTest < Minitest::Test
  def setup
    @bakery = Bakery.new("Test Bakery", "3222 Linclon Ave")
  end

  def test_name_attribute
    assert_equal "Test Bakery", @bakery.name
  end

  def test_location_attribute
    assert_equal "3222 Linclon Ave", @bakery.location
  end

  def test_order_lemon_cake
    assert_output(/You ordered 2 Lemom Cakes./) { @bakery.order(1, 2) }
  end

  def test_order_cookies
    assert_output(/You ordered 3 Cookies./) { @bakery.order(2, 3) }
  end

  def test_order_chocolate_cake
    assert_output(/You ordered 1 Chocolate Cake./) { @bakery.order(3, 1) }
  end

  def test_invalid_order
    assert_output(/Invalid choice./) { @bakery.order(4, 2) }
  end
end
