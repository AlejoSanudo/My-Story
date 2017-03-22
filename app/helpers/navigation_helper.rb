module NavigationHelper

  def top_navigation
    menu_items = []

    menu_items << { key: :dashboard, label: "Dashboard", path: dashboard_path }
    menu_items
  end

end
