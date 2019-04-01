require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")

class GuestTest < MiniTest::Test

  def setup
    @room1 = Room.new(1)
    @guest1 = Guest.new("Rob Johnson", "I will survive")
  end

  def test_can_create_guest
    assert_equal(Guest, @guest1.class)
  end

  def test_guest_has_name
    assert_equal("Rob Johnson", @guest1.name)
  end

  def test_room_has_guest_favourite_song
    @room1.add_song_to_room("I will survive")
    room_has_guest_favourite_song(@room1,@guest1)
    assert_equal("Whoo!", room_has_guest_favourite_song(@room1,@guest1))
  end






end
