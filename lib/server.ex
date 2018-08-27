defmodule Server do
  @moduledoc """
  Documentation for Server.
  """

  @doc """
  Server.start()

  ## Examples

      iex> Server.start()
      :cake

  """
  use Application

  def start(_type, _args) do
    children = [
      Plug.Adapters.Cowboy2.child_spec(scheme: :http, plug: RootRouter, options: [port: 4001])
    ]

    opts = [strategy: :one_for_one, name: Server.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
