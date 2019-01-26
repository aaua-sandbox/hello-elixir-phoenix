defmodule HelloElixirPhoenixWeb.PageController do
  use HelloElixirPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
