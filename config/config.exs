# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :who_is_near,
  ecto_repos: [WhoIsNear.Repo]

# Configures the endpoint
config :who_is_near, WhoIsNearWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2ceyk5K9QQqqyAxHhmbAVGNaE9HP8azDTyoc7mZjTobn/Qod8QVT+r4vz6wx/UG0",
  render_errors: [view: WhoIsNearWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WhoIsNear.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
