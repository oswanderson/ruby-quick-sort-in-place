def printArray(content)
  puts content
end

def swap(array, index, swap_with)
  temp = array[index]
  array[index] = array[swap_with]
  array[swap_with] = temp
end

def quick_sort(array, start, size, pivot)
  if size <= 1 || start == pivot
    return
  end

  i = j = start

  while j < pivot do
    if array[j] <= array[pivot]
      if array[j] < array[i]
        swap(array, i, j)
      end
      i += 1
      j += 1

    else
      j += 1

    end
  end

  if j == pivot
    swap(array, i, pivot)
  end

  printArray(array.join(' '))
  #printPartition(array, start, pivot)

  #left
  if i > start
    quick_sort(array, start, i, i - 1)
  end

  #right
  if j > i + 1
    quick_sort(array, i + 1, j - i, j)
  end

end

array = ARGV.map! {|i| i = i.to_i}

quick_sort(array, 0, array.length, array.length - 1)

