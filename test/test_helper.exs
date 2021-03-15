ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Heini.Repo, :manual)

{:ok, _} = Application.ensure_all_started(:wallaby)
Application.put_env(:wallaby, :base_url, HeiniWeb.Endpoint.url())
