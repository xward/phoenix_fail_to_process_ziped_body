defmodule PhoenixFailToProcessZipedBodyWeb.Router do
  use PhoenixFailToProcessZipedBodyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixFailToProcessZipedBodyWeb do
    pipe_through :api
    post("/create", ApiController, :test)
  end
end
