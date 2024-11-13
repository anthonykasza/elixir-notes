# lists vary in lenght, tuples have a known length
# tuples are more performant than lists

{:atom, "string"} 
tuple_size {:atom, "string"}

# getting is done with element func
elem {:atom, "string"}, 0

# setting is done with put element func. this returns a new tuple bcuz imuta billy tea
put_elem {:atom, "string"}, 0, "hello"


# there are no elem() equivalent for lists because you never know the length of a list.

