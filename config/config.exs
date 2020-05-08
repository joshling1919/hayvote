# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hayvote,
  ecto_repos: [Hayvote.Repo]

# Configures the endpoint
config :hayvote, HayvoteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cT3rW2A1Rka9pnV0GmTZf9AXvKRpeVFzUHsfW/4bh2rPGP/PmD5g+9BFCNpsTTAy",
  render_errors: [view: HayvoteWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Hayvote.PubSub,
  live_view: [signing_salt: "rT8t4by8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
