defmodule Heini.Repo do
  use Ecto.Repo,
    otp_app: :heini,
    adapter: Ecto.Adapters.Postgres
end
