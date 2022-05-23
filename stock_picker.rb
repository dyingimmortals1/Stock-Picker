def stock_picker(list)
    day1 = 0
    day2 = 0
    some_profit = 0
    list.each_with_index do |p, index|
        for l in index + 1..list.length - 1 do
            profit = list[l] - p
            if profit > some_profit
                some_profit = profit
                day1 = index
                day2 = p
            end
        end
    end
    p [day1, day2]
end

puts stock_picker([0,3,6,9,5,8,6,1,10])

                
