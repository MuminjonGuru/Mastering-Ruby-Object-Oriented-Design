# serial_average('002-10.00-20.00')
# "002-15.00"

def serial_average(s)
   a, b, c = s.split('-')
   avg = (b.to_f + c.to_f) / 2
   "#{a}-#{avg.round(2)}"    # that's fuc**ng good bro, you don't need to write return keyword
end
