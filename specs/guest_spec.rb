require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Rob Johnson")
  end

  def test_can_create_guest
    assert_equal(Guest, @guest1.class)
  end

  
  def test_guest_has_name
    assert_equal("Rob Johnson", @guest1.name)
  end


end
