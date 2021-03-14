defmodule Heini.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Heini.Repo,
      # Start the Telemetry supervisor
      HeiniWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Heini.PubSub},
      # Start the Endpoint (http/https)
      HeiniWeb.Endpoint
      # Start a worker by calling: Heini.Worker.start_link(arg)
      # {Heini.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Heini.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    HeiniWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
