defmodule PhilomenaWeb.SettingView do
  use PhilomenaWeb, :view
  alias Plug.Conn
  def theme_options do
    [  
      [key: "#{booru_name()} Default", value: "default", data: [theme_path: ~p"/css/#{booru_style()}.css"]],
      [key: "Dark", value: "dark", data: [theme_path: ~p"/css/dark.css"]],
      [key: "Red", value: "red", data: [theme_path: ~p"/css/red.css"]],
      [key: "Philomena Light", value: "olddefault", data: [theme_path: ~p"/css/olddefault.css"]],
      [key: "Ponerpics Default", value: "ponerpics-default", data: [theme_path: ~p"/css/ponerpics-default.css"]],
      [key: "Manebooru Fuchsia", value: "manebooru-fuchsia", data: [theme_path: ~p"/css/manebooru-fuchsia.css"]],
      [key: "Manebooru Green", value: "manebooru-green", data: [theme_path: ~p"/css/manebooru-green.css"]],
      [key: "Manebooru Orange", value: "manebooru-orange", data: [theme_path: ~p"/css/manebooru-orange.css"]],
      [key: "Twibooru Default", value: "twibooru-default", data: [theme_path: ~p"/css/twibooru-default.css"]],
      [key: "Furbooru Default", value: "furbooru-default", data: [theme_path: ~p"/css/furbooru-default.css"]],
      [key: "Bronyhub Default", value: "bronyhub-default", data: [theme_path: ~p"/css/bronyhub-default.css"]],
      [key: "Ponybooru Default", value: "ponybooru-default", data: [theme_path: ~p"/css/ponybooru-default.css"]]
    ]
  end

  def scale_options do
    [
      [key: "Load full images on image pages", value: "false"],
      [key: "Load full images on image pages, sized to fit the page", value: "partscaled"],
      [key: "Scale large images down before downloading", value: "true"]
    ]
  end

  def local_tab_class(conn) do
    case conn.assigns.current_user do
      nil -> ""
      _user -> "hidden"
    end
  end

  def staff?(%{role: role}), do: role != "user"
  def staff?(_), do: false
end
