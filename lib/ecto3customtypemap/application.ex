defmodule Ecto3customtypemap.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      Ecto3customtypemap.Repo,
      # Start the endpoint when the application starts
      Ecto3customtypemapWeb.Endpoint
      # Starts a worker by calling: Ecto3customtypemap.Worker.start_link(arg)
      # {Ecto3customtypemap.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Ecto3customtypemap.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Ecto3customtypemapWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
