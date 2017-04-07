def bad_two_sum?(arr, target)
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target
    end
  end
  false
end

def okay_two_sum?(arr, target)
  sorted = arr.sort
  (0...sorted.length).each do |i|
    remainder = target - sorted[i]
    return true if b_search(sorted[i+1..-1], remainder)
  end

  false
end

def b_search(arr, remainder)
  return nil if arr.empty?
  mid = arr.length / 2
  return mid if arr[mid] == remainder

  left = arr.take(mid)
  right =  arr.drop(mid + 1)

  if remainder < arr[mid]
    b_search(left, remainder)
  else
    val = b_search(right, remainder)
    val.nil? ? nil : val + remainder + 1
  end
end

def two_sum?(arr, target)
  number_counts = Hash.new(0)
  arr.each do |el|
    number_counts[el] += 1
  end

  number_counts.keys.each do |key|
    remainder = target - key
    if number_counts[key] > 1
      return true if number_counts.has_key?(remainder)
    elsif key == remainder && number_counts[key] <= 1
      return false
    else
      return true if number_counts.has_key?(remainder)
    end
  end
  false
end

p two_sum?([1,-1,7, 7], 14)
