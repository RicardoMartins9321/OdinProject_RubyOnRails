def bubble_sort(array)

  for i in 0...array.length
    sorted = true

    for j in 0...(array.length-i-1)
      if array[j] > array[j+1]
        # must define the new sorted values in a single line like so
        array[j], array[j+1] = array[j+1], array[j]
        sorted = false
      end
    end

    break if sorted
  end
  array
end


p bubble_sort([4,3,78,2,0,2])
# Output: [0,2,2,3,4,78]
