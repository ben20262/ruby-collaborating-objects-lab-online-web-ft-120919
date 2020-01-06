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
    name1 = clean[1]
    name1 = Song.new(name1)
    puts name1
    name1.artist = clean[0]
    puts name1
  end

  def artist_name= (artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
  end
end
