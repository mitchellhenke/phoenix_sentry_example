defmodule PhoenixSentryExampleWeb.PageController do
  use PhoenixSentryExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
