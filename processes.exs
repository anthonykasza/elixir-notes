# spawn a process and give it function to do
pid = spawn(fn -> true end)

# its dead because it already returned
Process.alive?(pid)

# check if your current process is alive (hint: it is)
Process.alive?(self())

# for each number in the range 0..99 spawn a process that prints its number
#  note the left arrow syntax for generating the range and the right arrow 
#  syntax for defining the anonymous function
for number <- 0..99 do
  spawn(fn ->
    pid = self()
    IO.puts("Number: #{number}, PID: #{inspect(pid)}")
  end)
end


# do the same but use message passing for communicating the number instead
#  of relying on scope
for number <- 0..100 do
  spawn(fn ->
    receive do
      number ->
        pid = self()
        IO.puts("Number: #{number}, PID: #{inspect(pid)}")
    end
  end)
  |> send(number)
end



### receive/do/after/end
for number <- 0..100 do
  spawn(fn ->
    receive do
      number ->
        pid = self()
        IO.puts("Number: #{number}, PID: #{inspect(pid)}")
    after
      1_000 -> "nothing after 1 second"
    end
  end)
  |> send(number)
end


# by design process that raise exceptions are left unhandled
# links are ways to ensure exceptions trickle down/bubble up thru their parents
spawn_link(fn -> raise "oops" end)


# Tasks are a nicety type. They provide more conveniences around process creation
#  https://hexdocs.pm/elixir/Task.html

# keeping state, like the state of a shared object or file contents in memory,
#  is done with processes too.
# this script manages a shared map that can be updated by sending it
#  a message which matches one of its receive clauses
defmodule KV do
  def start_link do
    Task.start_link(fn -> loop(%{}) end)
  end

  defp loop(map) do
    receive do
      {:get, key, caller} ->
        send(caller, Map.get(map, key))
        loop(map)
      {:put, key, value} ->
        loop(Map.put(map, key, value))
    end
  end
end

# Tasks are abstractions around spawn() while Agents are abstractions around shared state
