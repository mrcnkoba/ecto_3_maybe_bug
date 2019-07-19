defmodule Ecto3customtypemap.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "blog_posts" do
    field :title, Ecto3customtypemap.PgString
    field(:custom, {:map, Ecto3customtypemap.PgString})

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :custom])
    |> validate_required([:title, :custom])
  end
end
