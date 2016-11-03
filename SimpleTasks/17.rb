# Дан хеш
#    1) Удалить все элементы значение которых строки
#    2)  Удалить все элементы значение которых числа
#    3) Сделать реверс ключей не меняя значения.

hash = {
       a: 12,
       b: 74.9,
       c: [23, 44, 66, -8, 124],
       d: "Some String",
       z: { ca: "Inherit hash", cb: 112 }
       }
hash1 = hash.clone
hash2 = hash.clone
hash3 = hash.clone
hash1.delete_if { |_, value| value.is_a? String }
hash2.delete_if { |_, value| value.is_a?(Integer) || value.is_a?(Float) }

array = hash.values.reverse
hash.keys.each_with_index{|key, index| hash3[key] = array[index]}
p hash
p hash1
p hash2
p hash3