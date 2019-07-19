defmodule Ecto3customtypemap.Repo.Migrations.CreateBlogPosts do
  use Ecto.Migration

  def change do
    create table(:blog_posts) do
      add :title, :string
      add :custom, :jsonb

      timestamps()
    end

  end
end
