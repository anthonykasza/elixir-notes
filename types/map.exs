# maps are unorder and support key/values of any type
# maps support pttern matching, so the empty map matches all maps

# the key is a quoted atom
%{"one": 1}

# the key is an atom
%{one: 1}

# the key is a quoted atom
%{"o ne": 1}

# the key is a string
%{"o ne" => 1}

# when keys are atoms we can access values with dot notation
x = %{one: 1, two: 2}
x.one == 1

# fi the keys are atoms, we can generate a new map with the updated values
x = %{x | one: 100, two: 200}
x.one == 100

# map comprehensions, note the reserved :into keyword (other options include :uniq and :reduce)
#  note and the left arrow syntax
x = for {key, value} <- x, into: %{}, do: {key, value / 100}
x.one == 1

# we divided above so the new maps values must be floats
x.one === 1
x.one === 1.0


# nesting in maps is pretty straightforward
users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]
users[:john].age



# filtering a map generator is similar to using when-guards
employees = [
  %{name: "Eric", status: :active},
  %{name: "Mitch", status: :former},
  %{name: "Greg", status: :active}
]

for employee <- employees, employee.status == :active do
  employee.name
end
