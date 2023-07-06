def stock_picker(stocks)
  results = stocks.each_with_index.
  to_a.
  combination(2)
  .max_by{ |buy,sell| sell[0]-buy[0]}.map{|price, i| i}
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
# Output: [1,4]  # for a profit of $15 - $3 == $12


def stock_picker(prices)
  min_price = prices[0]
  min_index = 0

  profit = 0
  days = [0, 0]

  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_price = index
      next
    end

    if price - min_price > profit
      profit = price - min_price
      days = [min_index, index]
    end
  end

  days
end

array = [17, 3, 6, 9, 15, 8, 5, 1, 10]

p stock_picker(array)
# => [1, 4]
