class Song
  attr_accessor :artist, :title

  def initialize(title)
    @title = title
  end

  def self.new_by_filename(filename)
    song = self.new(file.split("-")[1].strip)
    song.artist_name = file.split("-")[0].strip
    song
  end
end

