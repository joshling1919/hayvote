defmodule HayvoteWeb.PageController do
  use HayvoteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
