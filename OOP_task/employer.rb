class Employer

  attr_reader :avg_salary
  attr_accessor :name, :last_name, :paid

  def initialize( employe={} )
    @name = employe[:name]
    @last_name = employe[:last_name]
    @paid = employe[:paid]
  end

  def salary
    raise NotImplementedError, 'Have to be overwritten.'
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

end

