# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :robot,
  ecto_repos: [Robot.Repo]

# Configures the endpoint
config :robot, RobotWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mXpVVqxW9OGQ1ZMvsJlttunj24zbem6+To9bC7qIomV/ERZKybeDwkmBLnbGtnwa",
  render_errors: [view: RobotWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Robot.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
