def bubble_sort(arr)
  range = arr.length - 1
  swapped = false

  (0...range).each do |i|
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      swapped = true
    end
  end

  bubble_sort(arr) if swapped
  arr
end

# Bubble Sort using Yield and Blocks ================
def bubble_sort_by(arr)
  range = arr.length - 1
  swapped = false

  (0...range).each do |i|
    if yield(arr[i], arr[i + 1]) >= 1
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      swapped = true
    end
  end
  bubble_sort_by(arr) { |a, b| a.length - b.length } if swapped
  arr
end
