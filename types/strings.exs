h = "hello"
IO.puts "#{h} world"
IO.puts h <> " world, again"

IO.puts "string\nescaping behaves as expected"

is_binary("this string is represented as a _binary_ sequence of bytes")

# unicode fuckery
byte_size("hellö")
String.length("hellö")

# interpolate strings or integers, no problems
problems = 99
IO.puts "i got #{problems} and weakly typed languages are 1"

# interpolate a complex type and houston, we have a
problems = %{one: 1, two: 2}
IO.puts "i got #{problems} and weakly typed languages are 1"
