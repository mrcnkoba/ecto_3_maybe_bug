defmodule Ecto3customtypemap.Test.BlogPosts do
  use Ecto3customtypemap.DataCase

  alias Ecto3customtypemap.Blog.Post

  test "custom type in maps doesn't work" do
    c = Post.changeset(%Post{}, %{
      title: "Elixir in Action\\\u0000",
      custom: %{"custom" => "Phoenix in Action\\\u0000"}
    })
    Ecto3customtypemap.Repo.insert(c)
  end
end
