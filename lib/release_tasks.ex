defmodule Heini.ReleaseTasks do
  @moduledoc """
  A collection of production specific build tasks executed during/before/after deployment,
  such as migrating the database.
  """
  def migrate do
    IO.puts("***** RUNNING MIGRATIONS *****")
    {:ok, _} = Application.ensure_all_started(:heini)

    path = Application.app_dir(:heini, "priv/repo/migrations")

    Ecto.Migrator.run(Heini.Repo, path, :up, all: true)
    IO.puts("***** FINISHED MIGRATIONS *****")
  end
end
