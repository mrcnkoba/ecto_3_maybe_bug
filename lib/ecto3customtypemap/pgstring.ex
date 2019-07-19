defmodule Ecto3customtypemap.PgString do
  @moduledoc """
  An Ecto type for a string containing a NULL bytes <<0>>, which PostgreSQL chockes on.
  """

  @behaviour Ecto.Type

  @doc """
  The Postgrex type.
  """
  def type, do: :string

  def cast(string) when is_binary(string), do: {:ok, string}
  def cast(_), do: :error

  @doc """
  Gets rid of the NULL byte. This function irrevocably changes the incoming string! We can't get it back.
  (We had ideas on how to fix it, but it got really messy)
  """
  def dump(string) when is_binary(string) do
    string = String.replace(string, <<0>>, "")

    {:ok, string}
  end

  def dump(_), do: :error

  @doc """
  Returns a string from the database. We skip the conversion, because the `dump` function completely forgets where the NULL byte was.
  """
  def load(string) when is_binary(string), do: {:ok, string}

  def load(_), do: :error
end
