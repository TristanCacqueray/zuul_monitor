defmodule ZuulMonitorWeb.PageControllerTest do
  use ZuulMonitorWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Logs"
  end
end
