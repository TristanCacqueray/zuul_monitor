import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :zuul_monitor, ZuulMonitorWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "k0jZerf5pbHRxqFf6SB2oZgg6oCY52JL7H5fNO4EWG+antMgPOnE8yKqi5y13GQa",
  server: false

# In test we don't send emails.
config :zuul_monitor, ZuulMonitor.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
