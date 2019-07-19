# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ecto3customtypemap,
  ecto_repos: [Ecto3customtypemap.Repo]

# Configures the endpoint
config :ecto3customtypemap, Ecto3customtypemapWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uQqrtwyA7EwXFbtOocrRtWYIVrHMsc0hyHnkr2GER4gr+8tv2oRqQNZ9kSFYjGNw",
  render_errors: [view: Ecto3customtypemapWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ecto3customtypemap.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
