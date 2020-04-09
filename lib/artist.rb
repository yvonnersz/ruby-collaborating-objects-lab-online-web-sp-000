

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def add_song(song)
    @songs << song
    @songs
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == self} || Artist.new(self)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
