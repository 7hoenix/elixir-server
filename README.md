# Http Dev Server

Simple dev server using only middleware (i.e. plug).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `server` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:server, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/server](https://hexdocs.pm/server).

## Usage

iex -S mix

c "lib/server/router.ex"

{:ok, _} = Plug.Adapters.Cowboy2.http Router, []
