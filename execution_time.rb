
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

def largest_contiguous_subsum_linear(list)
  largest_sum = list.first
  current_sum = list.first

  (1...list.length).each do |idx|
    current_sum = current_sum.nil? ? list[idx] : current_sum += list[idx]
    largest_sum = current_sum if largest_sum < current_sum
    if current_sum < 0
      current_sum = nil
    end
  end

  largest_sum
end
p largest_contiguous_subsum_linear([-2, -3, -6, -7, -6, -7])
