defmodule Hangman.Mixfile do
  use Mix.Project

  def project do
    [
      app:     :hangman,
      version: "0.1.0",
      elixir:  "~> 1.6",
      deps:    deps(),
      start_permanent: Mix.env == :prod,
    ]
  end

  def application do
    [
      mod: {
        Hangman.Application, []
      },
      extra_applications: [
        :logger
      ],
    ]
  end

  @mae_ref "ex-030-add-gallows"

  defp deps do
    [
      {
        :arcade,
        github: "more-advanced-elixir/arcade",
        runtime: false,
        ref:     @mae_ref,
      },
      {
        :dictionary,
        github: "more-advanced-elixir/dictionary",
        runtime: false,
        ref:     @mae_ref,
      },
      { :swarm, "~> 3.0" }
    ]
  end

end
