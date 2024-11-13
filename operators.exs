"con" <> "cat" <> "enation"

1 == 1
true != false
nil != false

1 > 2
1 < 2

# not true because their values arent equal
"foo" == "bar"

# not true because their types don't match
"foo" == :foo

# true despite their types don't match
1 == 1.0

# false because we use the strict operator 
1 === 1.0

# based on the differences in the loose and strict operator for numbers
# intuitively, i would expect the following to be true
#  "foo" == :foo
# and i would expect the following to be false
#  "foo" === :foo


