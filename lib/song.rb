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
    puts clean[0]
    song_name = clean[1]
    artist_name = clean[0]
    puts artist_name
    song_name = Song.new(song_name)
    arts = Artist.find_or_create_by_name(artist_name)
    puts arts
  end

  def artist_name= (artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
  end
end
