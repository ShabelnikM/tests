class FileWorker

  FILENAME = "people.txt"

  def self.read_from_file
    begin
      File.open( FILENAME, 'r' ) { |file| file.readlines }
    rescue
      p "#{FILENAME} does not exist or have uncorrect file format."
    end
  end

  def self.write_to_file( data=[] )
    File.open( FILENAME, 'w+' ) { |file| data.each { |item| file.write(item.inspect) } }
  end

end
