defmodule Client do
  @moduledoc """
    This module simulate a client that use compressed json
    Of course we can't disable compression here ;) The goal is to be able to manage it.
  """

  use Tesla

  plug(Tesla.Middleware.JSON)
  plug(Tesla.Middleware.Compression)

  def post, do: post("http://localhost:4000", %{hello: :i_m_fine})
end
