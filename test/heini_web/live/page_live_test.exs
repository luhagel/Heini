defmodule HeiniWeb.PageLiveTest do
  use HeiniWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Welcome to Heini!"
    assert render(page_live) =~ "Welcome to Heini!"
  end
end
