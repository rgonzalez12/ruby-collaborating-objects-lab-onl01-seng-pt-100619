class Song
  attr_accessor :artist, :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    split_file = filename.split(" - ")
    song_name = split_file[1]
    new_song = self.new(song_name)
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Song.new(name)
    else
      self.artist.name = name
    end
  end
end