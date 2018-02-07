require 'pry'
require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"
require_relative "../lib/mp3_importer.rb"

class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.detect {|artist| artist.name == name} || artist = self.new(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

end
