# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :heini,
  ecto_repos: [Heini.Repo]

# Configures the endpoint
config :heini, HeiniWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pbdN4sfsiagZtE7/GxL8+RyCRe42cUmuqSArYl8SfFe2bMDFacBPgpvuorY9yffW",
  render_errors: [view: HeiniWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Heini.PubSub,
  live_view: [signing_salt: "ZtIj+NAK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
