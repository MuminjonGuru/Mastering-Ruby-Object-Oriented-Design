def my_each
  if self.class == Hash
    keys.each do |k|
      val = self[k]
      yield(k, val)
    end
  else
    each do |i|
      yield i
    end
  end
end
