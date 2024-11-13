
# you can set multiple variable values at once using either a tuple or list...
{a, b, c} = {:hello, "world", 42}
[a, b, c] = [:hello, "world", 42]

# but you cannot match between lists and tuples
#  {a, b, c} = [:hello, "world", 42]

# pattern matching, just like rust,can be used to signal and handle errors/states
#  especially when combined with :atoms like :ok, :error, and :MyCustomException


