defmodule PhoenixSentryExampleWeb.PageController do
  use PhoenixSentryExampleWeb, :controller

  def index(conn, _params) do
    raise "error"
    render(conn, "index.html")
  end
end
