# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :music_management,
  ecto_repos: [MusicManagement.Repo]

# Configures the endpoint
config :music_management, MusicManagementWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jfuLSG6xtvBe5jTsx2I8G/1OV43r0Kgpn9Y1sIYroxYnTta/yqyWqy43a/k+8CpA",
  render_errors: [view: MusicManagementWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MusicManagement.PubSub,
  live_view: [signing_salt: "87PzR+RD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian for authentication
config :music_management, MusicManagement.Guardian,
       issuer: "music_management",
       secret_key: "vFoLVTHgh+kiHKy7rRvxf3yQZfY2/X3LqDppTLFPkz+9FO0wA/L6f+2AY56K3OPm"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
