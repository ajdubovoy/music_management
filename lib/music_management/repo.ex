defmodule MusicManagement.Repo do
  use Ecto.Repo,
    otp_app: :music_management,
    adapter: Ecto.Adapters.Postgres
end
