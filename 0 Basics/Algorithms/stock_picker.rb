
# stock picker

def stock_picker(price_list)
  profit = 0
  best_profit = 0
  low_buy = 0
  high_sell = 0

  price_list.each_with_index { |buy_price, buy_day|
    price_list.each_with_index { |sell_price, sell_day|
      profit = sell_price - buy_price if buy_day < sell_day

      if profit > best_profit
        best_profit = profit
        low_buy = buy_day
        high_sell = sell_day
      end
    }
  }
  puts "Low buy: #{low_buy} and High sell: #{high_sell}. Profit: $#{best_profit}"
end

stock_picker([17,3,6,9,15,8,6,1,10])




#Output:
  
  #Low buy: 1 and High sell: 4. Profit: $12
