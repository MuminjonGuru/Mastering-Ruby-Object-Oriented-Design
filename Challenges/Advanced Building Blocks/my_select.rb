def my_select
  if self.class == Array
    ss = []
  end
  if self.class == Hash
    ss = {}
  end

  self.my_each do |e|
    ss.push(e) if yield(e)
  end
  ss
end
