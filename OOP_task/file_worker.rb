class FileWorker

  FILENAME = "people.txt"

  def self.read_from_file
    File.open( FILENAME, 'r' ) { |file| file.readlines }
  end

  def self.write_to_file( data=[] )
    File.open( FILENAME, 'w+' ) { |file| data.each { |item| file.write(item.inspect) } }
  end

end