defmodule PhoenixSentryExample.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_sentry_example,
    adapter: Ecto.Adapters.Postgres
end
