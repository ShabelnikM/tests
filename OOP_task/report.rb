require './employer.rb'
require './monthly_paid_proger.rb'
require './hourly_paid_proger.rb'

mounthly = MonthlyPaidProger.fill_random
hourly = HourlyPaidProger.fill_random

people = mounthly + hourly
people.each(&:salary)
people.sort_by!(&:avg_salary).reverse!

p people.map { |item| { fio: "#{item.last_name} #{item.name}",  salary: item.avg_salary} }

sorted_name = people.map { |item| { name: item.name } }
p sorted_name.first(5)

sorted_last_name = people.map { |item| { last_name: item.last_name } }
p sorted_last_name.last(3)

