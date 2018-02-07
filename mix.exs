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

  defp deps do
    [
      { :arcade, path: "../arcade" },
      {
        :dictionary,
        github:  "more-advanced-elixir/dictionary",
        runtime: false,
        branch:  "002-add-swarm"
        },
      { :swarm, "~> 3.0" }
    ]
  end
end
