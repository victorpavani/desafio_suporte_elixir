defmodule DesafioSuporteNovo.MixProject do
  use Mix.Project

  def project do
    [
      app: :desafio_suporte_novo,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      escript: [main_module: DesafioSuporteNovo],
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :ex_unit]
    ]
  end

  defp deps do
    []
  end
end
