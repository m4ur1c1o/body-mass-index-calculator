module ApplicationHelper
  def login_helper style = ''
    if current_user
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    else
      (link_to 'Register', new_user_registration_path, class: style) +
      ' '.html_safe +
      (link_to 'Login', new_user_session_path, class: style)
    end
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: new_body_measure_path,
        title: 'BMI Calculator'
      },
      {
        url: body_measures_path,
        title: 'View history'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def copyright_generator
    MggViewTool::Renderer.copyright 'Mauricio García', 'All rights reserved'
  end
end
