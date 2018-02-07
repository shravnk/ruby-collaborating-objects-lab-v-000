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

  
  require 'pry'
  class Song
    attr_accessor :name, :artist
    # attr_reader :
  
    def initialize(name)
      @name = name
    end
  
    def self.new_by_filename(filename)
      song_title = filename.split(" - ")[1]
      song_artist = filename.split(" - ")[0]
      song = Song.new(song_title)
      song.artist_name = song_artist
      
      song
    end
  
    def artist_name=(name)
      artist = Artist.find_or_create_by_name(name)
      self.artist = artist
      artist.add_song(self)
    end
  
end
