require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class GuestTest < MiniTest::Test

  def setup
    @song1 = "I will survive"
    @room1 = Room.new(1)
    @guest1 = Guest.new("Rob Johnson", @song1)
  end

  def test_can_create_guest
    assert_equal(Guest, @guest1.class)
  end

  def test_guest_has_name
    assert_equal("Rob Johnson", @guest1.name)
  end

  def test_guest_has_favourite_song
    assert_equal(@song1, @guest1.favourite_song)
  end

end
