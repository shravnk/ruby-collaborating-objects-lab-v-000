class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path + "/*"
  end

  def import
    Dir[]
  
end
