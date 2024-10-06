defmodule SecureRandom.Mixfile do
  use Mix.Project

  def project do
    [
      app: :secure_random_ex,
      version: "0.6.0",
      elixir: "~> 1.14",
      deps: deps(),
      description:
        "A convienance library based on Ruby's SecureRandom, forked from secure_random",
      package: package()
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :crypto]]
  end

  defp package do
    [
      maintainers: ["Lloyd Ramey"],
      licenses: ["Apache-2.0"],
      links: %{github: "https://github.com/lnr0626/secure_random_ex"}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  def deps do
    [
      {:dialyxir, "~> 1.4", only: :dev, runtime: false},
      {:earmark, "~> 1.4", only: :dev},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
