class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

end
