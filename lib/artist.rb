class Artist
  attr_accessor :name, :songs
  @@all

  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song (song)
    track = Song.new(song)
    @songs << track
  end
end
