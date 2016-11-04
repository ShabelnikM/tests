require './employer.rb'

class MonthlyPaidProger < Employer

  def salary
    @avg_salary = @paid
  end

end