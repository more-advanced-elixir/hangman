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
      {
        :dictionary,
        github:  "more-advanced-elixir/dictionary",
        branch:  "001-updated-for-elixir-16"
      },
    ]
  end
end
