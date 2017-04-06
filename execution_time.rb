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

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min_quad(list)
p my_min_linear(list)
