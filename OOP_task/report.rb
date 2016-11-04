require './employer.rb'
require './monthly_paid_proger.rb'
require './hourly_paid_proger.rb'

mounthly = MonthlyPaidProger.fill_random
hourly = HourlyPaidProger.fill_random

people = mounthly + hourly
people.each(&:salary)
people.sort_by!(&:avg_salary).reverse!
p people.map { |item| item.name && item.avg_salary }

p people[0..4].name