require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")


class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("I believe I can fly")
  end

  def test_can_create_song
    assert_equal(Song, @song1.class)
  end

  def test_song_has_name
    assert_equal("I believe I can fly", @song1.name)
  end


end
