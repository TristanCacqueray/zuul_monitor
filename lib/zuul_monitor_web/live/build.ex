defmodule ZuulMonitorWeb.Build do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    # IO.puts("Mounting #{connected?(socket)}")
    if connected?(socket), do: Process.send_after(self(), :update, 1)
    {:ok, assign(socket, :logs, []) }
  end

  def handle_info(msg, socket) do
    # IO.puts("Handling info #{inspect socket}")
    Process.send_after(self(), :update, 1000)
    {:noreply, assign(socket, logs: ["#{DateTime.utc_now()} test" | socket.assigns.logs])}
  end

  def render(assigns) do
    ~H"""
    <h3>Logs</h3>
    <%= for log <- @logs do %>
      <%= log %><br />
    <% end %>
    """
  end
end
