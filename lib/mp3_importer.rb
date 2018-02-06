class MP3Importer
  attr_accessor :path, :files
  @files = []
  def initialize(path)
    @path = path
  end

  def import
    @files = Dir[@path + "/*"]
    puts @files[2]
  end

  def files
  end


end

MP3Importer.new('./db/mp3s').import
