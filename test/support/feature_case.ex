defmodule HeiniWeb.FeatureCase do
  @moduledoc """
  Sets up a basic test case for integration/feature tests with wallaby
  """
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL
      alias HeiniWeb.Router.Helpers, as: Routes

      @endpoint HeiniWeb.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Heini.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Heini.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(Heini.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
