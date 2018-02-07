defmodule Hangman.Application do

  use Application

  def start(_type, _args) do

    Arcade.connect_as(:hangman)

    options = [
      name:     Hangman.supervisor_name(),
      strategy: :one_for_one,
    ]

    DynamicSupervisor.start_link(options)
  end

end
