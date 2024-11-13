# x is each element of the list
# acc is the accumulator which ultimately gets returned

# map or reduce
Enum.reduce([1, 2, 3], 0, fn x, acc -> x + acc end)
Enum.map([1, 2, 3], fn x -> x * 2 end)

# map and reduce
Enum.reduce(Enum.map([1, 2, 3], fn x -> x * 2 end), 0, fn x, acc -> x + acc end)
