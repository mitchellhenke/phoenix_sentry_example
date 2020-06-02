# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_sentry_example,
  ecto_repos: [PhoenixSentryExample.Repo]

# Configures the endpoint
config :phoenix_sentry_example, PhoenixSentryExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Mo/1cIc0mzGhkoe0YLNI6iHtikjPGsPz+14cZGLdXeZlAfOabt/CttfuMTAEEVKu",
  render_errors: [view: PhoenixSentryExampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixSentryExample.PubSub,
  live_view: [signing_salt: "ZMiN7nsz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :sentry,
  dsn: "",
  environment_name: Mix.env(),
  included_environments: [:staging, :prod]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
