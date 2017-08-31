# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :crawler,
  ecto_repos: [Crawler.Repo]

# Configures the endpoint
config :crawler, CrawlerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0KdPHoP1wf1nwmE8wwwBHxUwVhkLzd5YzdFwxBpWt+OYxNB47G4EhWkKSM8nyTih",
  render_errors: [view: CrawlerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Crawler.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
