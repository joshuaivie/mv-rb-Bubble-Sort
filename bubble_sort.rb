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
