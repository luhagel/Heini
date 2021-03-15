defmodule HeiniWeb.PageLive do
  @moduledoc """
  Homepage LiveView
  """
  use HeiniWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, %{})}
  end
end
