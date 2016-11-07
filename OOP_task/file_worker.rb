require 'csv'

class FileWorker

  FILENAME = "people.csv"

  def self.read_from_file
    CSV.foreach(FILENAME) do |row|
      p row
    end
  rescue
      p "#{FILENAME} does not exist or have uncorrect file format."
  end

  def self.write_to_file( data=[] )
    CSV.open( FILENAME, 'wb' ) do |csv|
      csv << ['FIO', 'AVG Salary']
      data.each do |employer|
        csv << ["#{employer.name} #{employer.last_name}", employer.avg_salary]
      end
    end
  rescue
    p "#{FILENAME} does not exist or have uncorrect file format."
  end

end
