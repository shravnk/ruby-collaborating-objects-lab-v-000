require 'spec/spec_helper'
require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir[@path + "/*.mp3"]
    @files.map{|file| file.split("/")[-1]}
  end

  def import
    self.files
    @files.each do |file|
      song = Song.new(file.split("-")[1].strip)
      song.artist = file.split("-")[0].strip
      binding.pry
    end
  end

end

test_music_path = "./spec/fixtures/mp3s"
music_importer = MP3Importer.new(test_music_path)
music_importer.import
