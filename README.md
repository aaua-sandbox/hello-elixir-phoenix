# HelloElixirPhoenix

## Initial Log: Mac, and fish

```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.3
echo 'source ~/.asdf/asdf.fish' >> ~/.config/fish/config.fish
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

brew install coreutils automake autoconf openssl libyaml readline libxslt libtool unixodbc
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

asdf list-all erlang
asdf install erlang 21.2.4
asdf global erlang 21.2.4

asdf list-all elixir
asdf install elixir 1.8.0
asdf global elixir 1.8.0

asdf current
iex --version

mix local.hex
mix archive.install hex phx_new 1.4.0

mix phx.new hello_elixir_phoenix --database mysql
cd hello_elixir_phoenix/

docker-compose up -d
mix ecto.create

cd assets/
yarn install

cd ..
mix phx.server
```


To start your Phoenix server:
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
