defmodule ExW3.MixProject do
  use Mix.Project

  def project do
    [
      app: :exw3,
      version: "0.5.0",
      elixir: "~> 1.10",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "exw3",
      source_url: "https://github.com/hswick/exw3",
      dialyzer: [
        remove_defaults: [:unknown]
      ]
    ]
  end

  def application do
    [applications: [:logger, :ex_abi, :ethereumex]]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:ethereumex, "~> 0.7.0"},
      {:ex_keccak, git: "git://github.com/kohlerjp/ex_keccak.git", branch: "master", override: true},
      {:ex_abi, git: "git://github.com/kohlerjp/ex_abi.git", branch: "master"},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:eth, git: "git://github.com/kohlerjp/eth.git", branch: "master"},
      #{:blockchain, "~> 0.1.7"},
      {:jason, "~> 1.2"}
    ]
  end

  defp description do
    "A high level Ethereum JSON RPC Client for Elixir"
  end

  defp package do
    [
      name: "exw3",
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Harley Swick"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/hswick/exw3"}
    ]
  end
end
