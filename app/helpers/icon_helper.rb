module IconHelper

  def icon(name, options = nil)
    options ||= {}
    icon_class = "fa fa-fw "
    icon_class += options[:class].to_s
    options.merge!(class: "#{icon_class} fa-#{name.to_s.gsub('_', '-')}")
    content_tag(:i, nil, options)
  end

  def icon_with_tooltip(name, tooltip)
    content_tag(:span, icon(name), title: tooltip, "data-toggle" => :tooltip)
  end

  def app_logo
    logo_url = "logo.png"
    image_tag(logo_url, class: "logo")
  end

end
