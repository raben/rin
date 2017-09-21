defmodule RinWeb.PageController do
  use RinWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
