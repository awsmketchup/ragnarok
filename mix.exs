defmodule Ragnarok.MixProject do
  use Mix.Project

  def project do
    [
      app: :ragnarok,
      version: "0.1.0",
      elixir: "~> 1.6",
      escript: [main_module: Ragnarok.CLI],
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Ragnarok,  []},
      extra_applications: [:logger, :httpoison, :timex]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.0"},
      {:timex, "~> 3.1"},
      {:tzdata, "~> 0.1.8", override: true}
    ]
  end
end
