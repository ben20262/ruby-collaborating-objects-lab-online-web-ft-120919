class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename (file_name)
    clean = file_name.chomp(".mp3").split(" - ")
    clean[1] = Song.new(clean[1])
    file_name.artist = clean[0]
  end

  def artist_name (artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
  end
end
