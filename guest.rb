class Guest

attr_reader :name, :favourite_song
attr_accessor :wallet

  def initialize(name,favourite_song)
    @name = name
    @wallet = 100
    @favourite_song = favourite_song
  end

end
