def fibs(places)
  a = 0 
  b = 1

 places.times do
    temp = a
    a = b
    b = temp + b
  end
  puts a
end

def fibs_rec(n)
  if n == 0 || n == 1
    n
  elsif n > 1
    return fibs_rec(n-1) + fibs_rec(n-2)
  end
end

puts fibs_rec(5)


def merge_sort(array)
  if array.length == 1
    array
  elsif array.length > 1
    mid = (array.length / 2).round
    left = array[0...mid]
    right = array[mid..-1]
    
    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)
    p merge(sorted_left, sorted_right)
  end
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first > right.first
      sorted << right.shift
    elsif left.first == right.first
      sorted << left.shift
      sorted << right.shift
    elsif left.first < right.first
      sorted << left.shift
    end
  end
  sorted + left + right
end

# array = [5, 8, 3, 2, 1, 4]
merge_sort(array)