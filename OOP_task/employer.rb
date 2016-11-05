class Employer

  attr_reader :id, :avg_salary
  attr_accessor :name, :last_name, :paid

  def initialize( employe={} )
    @name = employe[:name]
    @last_name = employe[:last_name]
    @paid = employe[:paid]

  end

  def self.read_from_file
    File.open( "people.txt", 'r' ) { |f| f.readlines }
  end

  def self.write_to_file
    File.open( "people.txt", 'w+' ) { |f| f <<  }
  end

  def salary
  end

  def self.fill_random(count = 10)
    progers = []
    count.times do
      progers << new( name: self.random_string, last_name: self.random_string, paid: rand(999))
    end
    progers
  end

  protected
  def self.random_string
    (0...50).map { ('a'..'z').to_a[rand(26)] }.join
  end
  # Employer.write_to_file([Employer.new, Employer.new])

end

