class Song
  attr_accessor :artist, :title

  def initialize(title)
    @title = title
  end

  def self.new_by_filename(file)
    song = self.new(file.split("-")[1].strip)
    song.artist_name = file.split("-")[0].strip
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end

end
