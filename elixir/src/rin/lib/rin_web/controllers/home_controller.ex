defmodule RinWeb.HomeController do
  use RinWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
