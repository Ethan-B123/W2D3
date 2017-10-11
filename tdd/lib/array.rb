class Array
  def my_uniq
    uniq_arr = []
    self.each do |el|
      uniq_arr << el if !uniq_arr.include?(el)
    end
    uniq_arr
  end

  def two_sum
    ret_arr = []
    i = 0
    while i < self.length
      j = i + 1
      while j < self.length
        x, y = self[i], self[j]
        ret_arr << [i, j] if x + y == 0
        j += 1
      end
      i += 1
    end
    ret_arr
  end

  def self.my_transpose(arr)
    new_arr = Array.new(arr[0].length) { Array.new(arr.length) }
    arr.each_index do |i|
      arr[i].each_index do |j|
        new_arr[j][i] = arr[i][j]
      end
    end
    new_arr
  end

  def self.stock_picker(arr)
    max_profit = nil
    pos = []
    i = 0
    while i < arr.length
      j = i + 1
      while j < arr.length
        if max_profit.nil? || arr[j] - arr[i] > max_profit
          pos = [i, j]
          max_profit = arr[j] - arr[i]
        end
        j += 1
      end
      i += 1
    end
    pos
  end
end
