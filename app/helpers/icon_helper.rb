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

  def button_with_icon(icon_name, label, href, btn_type=:default, *options)
    link_to icon(icon_name) + " " + content_tag(:span, label), href, { class: "icnbtn btn btn-#{btn_type}" }.reverse_merge(options.extract_options!)
  end
  
end
