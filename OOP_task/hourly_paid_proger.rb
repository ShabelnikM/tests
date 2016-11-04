require './employer.rb'

class HourlyPaidProger < Employer

  def salary
    @avg_salary = 20.8 * 8 * @paid
  end

end

