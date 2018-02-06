class MP3Importer
  attr_accessor :path, :files
  @files = []
  def initialize(path)
    @path = path
  end

  def import
    @files = Dir[@path + "/*.mp3"]
  end

  def files
    @files.each do |file|
      Song.new(file.split("/")[-1].split("-")[1].strip)
    end
  end

end
