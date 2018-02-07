defmodule Hangman do

  def supervisor_name do
    { :via, Swarm, Hangman.Supervisor }
  end

  def new_game() do
    import DynamicSupervisor
    { :ok, pid } = start_child(supervisor_name(), Hangman.Server)
    pid
  end

  def tally(game_pid) do
    GenServer.call(game_pid, { :tally })
  end

  def make_move(game_pid, guess) do
    GenServer.call(game_pid, { :make_move, guess })
  end

end
