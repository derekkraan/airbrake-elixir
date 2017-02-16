defmodule Airbrake.Mixfile do
  use Mix.Project

  def project do
    [app: :airbrake,
     version: "0.4.0",
     elixir: "~> 1.2",
     package: package,
     description: """
       An Elixir notifier to the Airbrake
     """,
     deps: deps]
  end

  def package do
    [contributors: ["Roman Smirnov"],
     maintainers: ["Roman Smirnov"],
     licenses: ["LGPL"],
     links: %{github: "https://github.com/romul/airbrake-elixir"}]
  end

  def application do
    [mod: {Airbrake, []}, applications: [:httpoison]]
  end

  defp deps do
    [{:httpoison, "~> 0.9"},
     {:poison, "~> 2.0"},
     {:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
