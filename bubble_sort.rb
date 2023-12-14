def bubble_sort(numbered_array)
  sorted = []
  temp = 0

  until numbered_array.empty? 
    numbered_array.each.with_index do |number, index|
      if index != numbered_array.length - 1 && number > numbered_array[index + 1]
        temp = numbered_array[index + 1]
        numbered_array[index + 1] = number
        numbered_array[index] = temp
      elsif index == numbered_array.length - 1
        sorted.unshift numbered_array.slice!(numbered_array.length - 1)
      end
    end
  end
  sorted
end