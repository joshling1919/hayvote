defmodule Hayvote.Repo do
  use Ecto.Repo,
    otp_app: :hayvote,
    adapter: Ecto.Adapters.Postgres
end
