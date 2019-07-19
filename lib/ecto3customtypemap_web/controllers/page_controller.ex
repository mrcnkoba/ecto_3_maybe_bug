defmodule Ecto3customtypemapWeb.PageController do
  use Ecto3customtypemapWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
