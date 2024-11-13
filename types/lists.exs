[:this, :is, :a, :list, :of, :atoms, "but list can contain any type"]

# list concatenation list 2 is appended to the end of list 1
[1,2,3] ++ [3,2,1]

# list substraction, for each element in list 2 remove the first occurence from list 1. if not present move on to the next element.
[1, 2, 3, 3, 2, 1] -- [3,2,1]
[1, 2, 3, 3, 2, 1] -- [1,2,3]

Enum.to_list(0..9) -- [10, 9]
Enum.to_list(0..9) -- [:anyhting, "farts", 10, 9]

# since this is a functional language, i feel like i'll be using lists and maps heavily
# it's important to note that ex is immutable so we'll be generating a ton of new lists

# also, super important with list are head/tail and pop/push and slicing/indexing
hd [1, 2, 3]
tl [1, 2, 3]

# faster
[0] ++ [1, 2, 3]
# slower
[1, 2, 3] ++ [0]

# pattern matching can be used as a "pop" function
[ theFirstElementAsAnInteger | theRestAsAList ] = [1,2,3,4,5]

# pattern matchin can be used for appending too
#  and this is efiicient because the left operator is shorter than the right
[0 | [1,2,3] ]


# why would calling head on an empty list result in an arguement error and not a nil?


# 0..10 is a range type	
# negative Range types are not allowed but ranges larger than the list are allowed
Enum.slice([0, 1, 2, 3, 4], 0..10)
Enum.slice([0, 1, 2, 3, 4], 0..0)
Enum.slice([0, 1, 2, 3, 4], 1..3)

# list operations are slower than tuples. use tuples where able.
