# Дан текст. Заменить все “,” на “.” и наоборот

text = "I, wish, I, could, fly."

array = text.split("")
new_array = array.map {|item| item == "," ? "." : item && item == "." ? "," : item}
p new_array.join("")
