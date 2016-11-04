require './employer.rb'
require './monthly_paid_proger.rb'
require './hourly_paid_proger.rb'

mounthly = MonthlyPaidProger.fill_random
hourly = HourlyPaidProger.fill_random

people = mounthly + hourly
people.each(&:salary)
people.sort_by!(&:avg_salary).reverse!

p people.map { |item| { fio: "#{item.last_name} #{item.name}",  salary: item.avg_salary} }

people[0..4]
