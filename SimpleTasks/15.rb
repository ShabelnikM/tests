# Дан массив слов. Необходимо подсчитать, сколько раз встречается каждое слово в массиве.

sentense = "I wish I could fly"

array = sentense.split(" ")
array.uniq.each { |item| p "#{array.count(item)} #{item} in sentense" }
