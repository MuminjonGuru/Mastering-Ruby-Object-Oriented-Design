def reverser(string, &prc)
  prc.call(string.reverse)
end

def word_changer(sentence, &prc)
  words = sentence.split(" ")
  new_words = []
  words.each do |word|
    new_words << prc.call(word)
  end
  new_words.join(" ")
end

def greater_proc_value(num, prc1, prc2)
  res1 = prc1.call(num)
  res2 = prc2.call(num)

  if res1 > res2
    res1
  else
    res2
  end
end

def and_selector(array, prc1, prc2)
  selected = []
  array.each do |el|
    if prc1.call(el) && prc2.call(el)
      selected << el
    end
  end
  selected
end

def alternating_mapper(array, prc1, prc2)
  mapped = []
  array.each_with_index do |el, idx|
    if idx.even?
      mapped << prc1.call(el)
    else
      mapped << prc2.call(el)
    end
  end
  mapped
end

















