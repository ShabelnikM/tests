# В одном массиве записан рост некоторых студентов, а в другом (с тем же числом элементов) -
#     их фамилии в том же порядке, в котором указан рост. Известно, что все студенты разного роста.
#     Напечатайте фамилию самого высокого студента.

statute = [175 , 183, 168]
last_name = ["First", "Second", "Tramp"]

p "#{last_name[ statute.find_index(statute.max) ]} is highest"