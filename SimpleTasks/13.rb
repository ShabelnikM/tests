# В хеш записаны рост студентов и их фамилии.
#     Напечатайте фамилию самого высокого студента.

hash = { 175 => 'First', 183 => 'Second', 168 => 'Tramp'}
highest = hash.max_by { |statute, last_name| statute }
p "Highest student is #{highest[1]}"
