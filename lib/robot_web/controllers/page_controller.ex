defmodule RobotWeb.PageController do
  use RobotWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
