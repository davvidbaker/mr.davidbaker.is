use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mr, MrWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :mr, Mr.Mailer,
  adapter: Bamboo.TestAdapter,
  api_key: "",
  domain: ""
