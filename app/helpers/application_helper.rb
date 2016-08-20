module ApplicationHelper
  include IconHelper

  def current_data_for_javascript
    """
      {
      }
    """
  end

  def button_with_icon(icon_name, label, href, btn_type=:default, *options)
    link_to icon(icon_name) + " " + content_tag(:span, label), href, { class: "icnbtn btn btn-#{btn_type}" }.reverse_merge(options.extract_options!)
  end
  
end
