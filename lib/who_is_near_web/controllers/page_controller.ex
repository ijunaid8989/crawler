defmodule WhoIsNearWeb.PageController do
  use WhoIsNearWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
