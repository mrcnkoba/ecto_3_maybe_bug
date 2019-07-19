defmodule Ecto3customtypemap.Repo do
  use Ecto.Repo,
    otp_app: :ecto3customtypemap,
    adapter: Ecto.Adapters.Postgres
end
