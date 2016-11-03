# В хеш записаны рост студентов и их фамилии.
#     Напечатайте фамилию самого высокого студента.

hash = { 'First' => 175, 'Second' => 183, 'Tramp' => 168 }
highest = hash.max_by { |last_name, statute| statute }
p "Highest student is #{highest[0]}"
