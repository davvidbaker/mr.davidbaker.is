defmodule MrWeb.PageController do
  use MrWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
