class Artist
  attr_accessor :name, :all_songs
  @@all = []

  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song (song)
    @all_songs << song
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name (name)
    found = self.select {|singer| singer.name == name}
    if found == nil
      name = Artist.new(name)
      found = name
    end
    found
  end
end
