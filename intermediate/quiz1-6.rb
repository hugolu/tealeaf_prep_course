def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

arr1 = [1,2,3,4,5]
arr2 = [6,7,8,9,10]
p arr1
p arr2
p rolling_buffer1(arr1, 8, arr2)
p arr1
p arr2

arr1 = [1,2,3,4,5]
arr2 = [6,7,8,9,10]
p arr1
p arr2
p rolling_buffer2(arr1, 8, arr2)
p arr1
p arr2
