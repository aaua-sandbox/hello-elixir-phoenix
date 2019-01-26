# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_elixir_phoenix,
  ecto_repos: [HelloElixirPhoenix.Repo]

# Configures the endpoint
config :hello_elixir_phoenix, HelloElixirPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "m/c1UjWrwS7CK5m/+JKew65URQTFESw6KjcDD0MqCFeX594nKwEo5ioSJqu2Q2Z5",
  render_errors: [view: HelloElixirPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloElixirPhoenix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
