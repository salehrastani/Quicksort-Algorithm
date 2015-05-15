# quicksort in ruby

def sort(items)
  less = []
  greater = []
  sorted_array = []
  #   p "initial array: #{items}"

  if items.length <= 1
    return items
  else
    pivot = items.sample
    items.delete(pivot)
  end

  items.each_with_index do |item, index|
    if item <= pivot
      less << item
    else
      greater << item
    end
  end

  sorted_array << quicksort(less)
  sorted_array << pivot
  sorted_array << quicksort(greater)
end



  numbers = [4,2,5,6,7,9,1,3]
  sort(numbers)

