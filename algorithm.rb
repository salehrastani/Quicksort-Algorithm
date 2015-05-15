# quicksort in ruby

def sort(items)

  if items.length <= 1
    return items
  else
    pivot = items.sample
    pivot_index = items.find_index(pivot)
    p "pivot_index: #{pivot_index}, pivot: #{pivot}"
    items.delete(pivot)
  end

  swap = false

  items.each_with_index do |item, index|
    if item <= pivot
      less << item

    else
      greater << item

    end
  end

  less.push(pivot)
  new_array = less.concat(greater)
  p "this is the new array: #{new_array}"

   if swap
     sort(new_array)
   else
     new_array
   end
end



  numbers = [4,2,5,6,7,9,1,3]
  sort(numbers)

