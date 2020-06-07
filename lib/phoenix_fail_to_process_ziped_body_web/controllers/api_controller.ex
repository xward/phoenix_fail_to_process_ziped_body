defmodule PhoenixFailToProcessZipedBodyWeb.ApiController do
  @moduledoc false
  use PhoenixFailToProcessZipedBodyWeb, :controller

  def test(conn, _args) do
    conn
    |> send_resp(200, "yeah me too !")
    |> halt()
  end
end
