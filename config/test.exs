use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_fail_to_process_ziped_body, PhoenixFailToProcessZipedBodyWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
