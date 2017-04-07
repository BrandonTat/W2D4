def naive_windowed_max_range(array, window_size)
  current_max_range = nil
  (0..array.length- window_size).each do |i|
    min, max = array[i, window_size].minmax
    range = max - min
    if current_max_range.nil? || current_max_range < range
      current_max_range = range
    end
  end
  current_max_range
end
