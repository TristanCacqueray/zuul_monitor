defmodule ZuulMonitorWeb.PageController do
  use ZuulMonitorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
