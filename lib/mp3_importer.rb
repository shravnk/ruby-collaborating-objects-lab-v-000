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
    @files.each do |file|
      Song.new(file.split("/")[-1].split("-")[1].strip)
    end
  end

end
