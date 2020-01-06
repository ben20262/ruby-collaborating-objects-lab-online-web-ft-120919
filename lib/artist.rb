class Artist
  attr_accessor :name, :song_list
  @@all = []

  def initialize (name)
    @name = name
    @song_list = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == @name}
  end

  def add_song (song)
    @song_list << song
  end

  def self.find_or_create_by_name (name)
    found = self.all.select {|singer| singer.name == name}[0]
    if found == nil
      name = Artist.new(name)
      found = name
    end
    found
  end
end
