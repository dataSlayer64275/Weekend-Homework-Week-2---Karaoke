require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new(1)
    @guest1 = Guest.new("Rob Johnson", "I will survive")
    @guest2 = Guest.new("Mary Johnson", "Eye of the tiger")
    @guest3 = Guest.new("Jeremy Phillips", "Lose yourself")
  end


  def test_can_create_room
    assert_equal(Room, @room1.class)
  end

  def test_room_has_number
    assert_equal(1, @room1.number)
  end

  def test_check_in_guest
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.number_of_guests)
    assert_equal(1, @room1.capacity)
    assert_equal(20, @guest1.wallet)
  end

  def test_check_in_guest__full_room
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    assert_equal(2, @room1.number_of_guests)
    assert_equal(0, @room1.capacity)
    assert_equal("This room is full!", @room1.check_in_guest(@guest3))
  end

  def test_check_out_guest
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    assert_equal(2, @room1.number_of_guests)
    assert_equal(0, @room1.capacity)
    @room1.check_out_guest(@guest1)
    assert_equal(1, @room1.number_of_guests)
    assert_equal(1, @room1.capacity)
  end

  def test_add_song_to_room
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.number_of_songs_added)
  end

  def test_room_has_guest_favourite_song
    @room1.add_song_to_room("I will survive")
    assert_equal("Whoo!", @room1.room_has_guest_favourite_song(@guest1))
  end


end
