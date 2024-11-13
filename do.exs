# the do keyword is actually an atom, :do, acting as a keyword in a keyword list

if true do
  "This will be seen"
else
  "This won't"
end


# do and else are really an illusion
if true, do: "This will be seen", else: "This won't"
if true, [do: "This will be seen", else: "This won't"]

# keyword lists are lists that act like strict maps
#  keys must be atoms
#  keys are ordered
#  keys aren't unique and can yield different values
