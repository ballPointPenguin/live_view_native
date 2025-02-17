defmodule LiveViewNative.Platforms.Web do
  defstruct []

  defimpl LiveViewNativePlatform do
    def context(_struct) do
      LiveViewNativePlatform.Context.define(:web,
        tag_handler: Phoenix.LiveView.HTMLEngine,
        template_extension: ".html.heex",
        template_namespace: LiveViewNativeWeb,
        otp_app: :live_view_native
      )
    end

    def start_simulator(_struct, _opts \\ []) do
      {:ok, :skipped}
    end
  end
end
