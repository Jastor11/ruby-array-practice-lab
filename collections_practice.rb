def sort_array_asc(arr)
  arr.sort
end

def sort_array_desc(arr)
  arr.sort { |x,y| y <=> x }
end

def swap_elements_from_to(array, index, destination_index)
  item_1 = array[index.to_i - 1]
  item_2 = array[destination_index.to_i - 1]
  array[index.to_i - 1] = item_2
  array[destination_index.to_i - 1] = item_1
  return array
end

def swap_elements(array)
  array = swap_elements_from_to(array, 2, 3)
  return array
end

def reverse_array(array)
  my_new_array = array.reverse
  return my_new_array
end

def kesha_maker(array)
  my_new_array = []
  array.each do |item|
    item.to_s[2] = "$"
    my_new_array << item
  end
  my_new_array
end

def find_a(array)
  my_array = []
  array.each do |item|
    if item[0].downcase === "a"
      my_array << item
    end
  end
  my_array
end

def sum_array(array)
  counter = 0
  array.each do |num|
      counter += num.to_i
  end
  counter
end

def add_s(array)
  new_array = []
  array.each_with_index.collect do |item, index| 
    if index != 1
      new_array << item + "s" 
    else 
      new_array << item
    end
  end
  new_array
end


zoo = ["cow", "tiger", "bear", "tha homies"]
puts zoo.each_with_index.collect{|animal, index| "#{animal} number #{index + 1}" }


