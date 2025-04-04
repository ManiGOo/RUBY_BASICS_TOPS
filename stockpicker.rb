def stockpicker(prices)
  return [] if prices.empty? || prices.length < 2

  min_price_index = 0
  max_profit = 0
  best_days = []

  prices.each_with_index do |price, day|
    if price < prices[min_price_index]
      min_price_index = day
    end

    profit = price - prices[min_price_index]

    if profit > max_profit
      max_profit = profit
      best_days = [min_price_index, day]
    end
  end

  best_days
end

p stockpicker([17,3,6,9,15,8,6,1,10])

