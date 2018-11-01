def quicksort(arr, low, high)
    if low < high
      p = partition(arr, low, high)
      quicksort(arr, low, p-1)
      quicksort(arr, p+1, high)
    end
  end
  
  def partition(arr, low, high)
    pivot = arr[high]
    i = low
    for j in low..high do
      if arr[j] < pivot
        swap = arr[i]
        arr[i] = arr[j]
        arr[j] = swap
        i += 1
      end
    end
    swap = arr[i]
    arr[i] = arr[high]
    arr[high] = swap
    return i
  end
  
  
  ## Main loop                                                                                      
  puts "Please enter a string of numbers, seperated by commas ONLY!"
  arr_str = gets.strip
  arr = arr_str.split(',').map{|i| i.to_i}
  quicksort(arr, 0, arr.length-1)
  puts "Do you want the lowest or the highest number?"
  choice = gets.strip.downcase
  if choice == "highest"
    puts arr[arr.length-1]
  elsif choice == "lowest"
    puts arr[0]
  else
    puts "dunno what that means man"
  end