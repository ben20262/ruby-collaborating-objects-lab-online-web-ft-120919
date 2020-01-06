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
    name = clean[1]
    name = Song.new(name)
    puts name
    name.artist = Artist.all.select {|artist| artist.name == clean[0]}[0]
  end

  def artist_name= (artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
  end
end
