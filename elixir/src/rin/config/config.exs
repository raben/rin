# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rin,
  ecto_repos: [Rin.Repo]

# Configures the endpoint
config :rin, RinWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RUMs3pWbxezFEJqq6L5jyfMAXZhGMsXm8Uc5soctixZ7VMxiKWpJ1K+20c0UaYyi",
  render_errors: [view: RinWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rin.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
