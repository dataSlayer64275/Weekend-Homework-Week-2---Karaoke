class Room

attr_reader :number, :capacity, :guests

  def initialize(number)
    @number = number
    @capacity = 2
    @guests = []
    @songs = []
  end

  def check_in_guest(guest)
    if @capacity == 0
      return "This room is full!"
    else
    @guests.push(guest)
    @capacity -= 1
    guest.wallet -= 80
    end
  end

  def check_out_guest(guest)
    @guests.delete(guest)
    @capacity += 1
  end

  def number_of_guests
    @guests.length
  end

  def add_song_to_room(song)
    @songs.push(song)
  end

  def number_of_songs_added
    @songs.length
  end

  def room_has_guest_favourite_song(guest)
    if @songs.include?(guest.favourite_song)
      "Whoo!"
    end
  end

end
