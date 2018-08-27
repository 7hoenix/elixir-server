defmodule Router do
  use Plug.Router
  require Lesson

  plug :match
  plug :dispatch

  get "/" do
    IO.puts inspect conn
    send_resp(conn, 200, "this website runs on elixir")
  end

  get "/lesson/:id" when id == "1" do
    send_resp(conn, 200, "#{id} is found")
  end

  get "/lesson/:id" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(Lesson.get_lesson()))
  end

  # forward "/users", to: UsersRouter

  match _ do
    send_resp(conn, 404, "oops")
  end
end
