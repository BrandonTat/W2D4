def my_min_quad(list)
  list.each do |el|
    smallest = true
    list.each do |el2|
      smallest = false if el > el2
    end

    return el if smallest
  end
end

def my_min_linear(list)
  min = list.first
  list.each do |el|
    min = el if el < min
  end

  min
end

def largest_contiguous_subsum_quad(list)
  largest_sum = nil
  (0...list.length).each do |idx|
    (idx...list.length).each do |idx2|
      sum = list[idx..idx2].inject(:+)
      if largest_sum.nil? || largest_sum < sum
        largest_sum = sum
      end
    end
  end
  largest_sum
end
#p largest_contiguous_subsum_quad([2, 3, -6, 7, -6, 7])
