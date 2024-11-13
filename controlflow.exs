# case/do/when makes heavy use of pattern matching
case {1, 2, 3} do
  {4, 5, 6} ->
    "This clause won't match"
  {1, x, 3} ->
    "This clause will match and bind x to 2 in this clause"
  _ ->
    "This clause would match any value"
end

# note the _ special character and the use of the -> operator
#  note that x is rebound since it is not pinned

# case clauses can add additional condition logic using the "when" keyword
#  it seems like these are called  "guards" in elixir parlance
case {1, 2, 3} do
  {1, x, 3} when x > 0 ->
    "Will match"
  _ ->
    "Would match, if guard condition were not satisfied"
end

# "using else with unless is generally discouraged", i discourage the use of unless.
# !unless your language has a not operator, you !do need an unless keyword
#   !if you want to lose your sanity. 

# elixir uses if/do/else/end instead of brackets


# cond/do/end is similar to case/do/end but instead of pattern matching,
#  it evaluates some statement as true or false
cond do
  2 + 2 == 5 ->
    "This is never true"
  2 * 2 == 3 ->
    "Nor this"
  true ->
    "This is always true (equivalent to else)"
end

# note the explicit default true "route" at the end. this is necessary incase
#  no other routes eval to true
