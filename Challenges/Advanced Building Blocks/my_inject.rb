def my_inject(store=self[])
  store ||= []
  self.my_each do |e|
    store = yield(store, e)
  end
  store
end
