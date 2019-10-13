# This is Array examples

array_with_new = Array.new
array_with_new_fixed_size = Array.new(10)
array_with_new_fixed_size[5] = 'only 5 is updated'
array_2 = Array.[](1, 2, 3, 4, 5, 6, 7)
array_with_copy = Array.new(4, 'orange')

# Array ops
print [1, 2, 3, 4, 5 ,6] & [0, 2, 3 ,4, 7]
print [1, 2, 3, 4] | [3, 4, 5, 6]
print [1, 2] * 4
print [1, 2, 3, 4, 6] * "-"
print [1, 2, 3] + [4, 5]
print [1, 2, 3, 4, 5, 6, 7] - [5, 6, 7, 8]
print [1, 2] << 'love' << [2, 4]

