def stock_picker(prices)
  index = 0
  buy = 0
  sell = 0

  prices.each do |price|
    for i in prices.index(price)...prices.length
      if prices[i] - price > buy - sell
        buy = prices[i]
        sell = price
      end
    end
    index += 1
  end
  puts "#{sell} #{buy}"
end

picks = [17,3,6,9,15,8,6,1,10]
stock_picker(picks)