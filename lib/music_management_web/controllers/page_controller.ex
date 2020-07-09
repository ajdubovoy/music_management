defmodule MusicManagementWeb.PageController do
  use MusicManagementWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
