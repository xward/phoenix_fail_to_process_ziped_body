# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :phoenix_fail_to_process_ziped_body, PhoenixFailToProcessZipedBodyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xeMbiKI0ssEtFpv1LrU1gM4Uguj9Qco31f9Dq1LunNT528SkpBQWGFRgLn1BRSao",
  render_errors: [
    view: PhoenixFailToProcessZipedBodyWeb.ErrorView,
    accepts: ~w(json),
    layout: false
  ],
  pubsub_server: PhoenixFailToProcessZipedBody.PubSub,
  live_view: [signing_salt: "Ng4i83p7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
