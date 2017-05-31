def printArray(content)
  puts content
end

def printPartition(array, first, last)
  new_array = array[first,last + 1]
  puts new_array.join(' ')
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
    if array[j].to_i() <= array[pivot].to_i()
      if array[j].to_i() < array[i].to_i()
        swap(array, i, j)
        i += 1
        puts
        printArray(array.join(' '))
      end
    end
    j += 1
  end

  if j == pivot
    swap(array, i, pivot)
    puts
    printArray(array.join(' '))
  end

  printArray(array.join(' '))

  #left
  if i > start
    quick_sort(array, start, i, i - 1)
  end

  #right
  if j > i
    quick_sort(array, i + 1, j - i, j)
  end

end

array = [1,3,9,8,2,7,5]

quick_sort(array, 0, array.length, array.length - 1)
