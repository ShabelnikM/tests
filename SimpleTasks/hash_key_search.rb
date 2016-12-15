def search_key(hash, item)
  if hash.is_a? Hash
    hash.each { |key, value|
      if key == item
        @value= hash[key]
        break
      else
        @key_array.push(key)
        search_key(value, item)
      end
      }
  elsif hash.is_a? Array
    hash.each { |elem| search_key(elem, item) }
  else
  end
end

def search
  hash = {
      "test"=>1,
      "zero"=>7,
      proc{}=>[[{:key=>"sss"}, {"pass"=>{"a"=> [1,{:bsd => [[],[],[],[],[],[[proc{}] => {[7,1]=>{:rr=>111}}]]}] }}], [1,[:olol, {[1, {:trolo => "r"}] => 1}]]],
      "kuk"=>[{"tr"=>"jxp"},{:lx=>"xp"}]}
  item = "a"
  @key_array = []

  search_key(hash, item)
  if @value.nil?
    p @key_array
  else
    p @value
  end
end

search