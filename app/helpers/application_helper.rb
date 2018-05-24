module ApplicationHelper
  def login_helper(style = '')
    if current_user.is_a?(GuestUser)
      (link_to 'Login', new_user_session_path, class: style) + ' ' +
      (link_to 'Register', new_user_registration_path, class: style)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
    greeting = "Thanks for visiting me from #{session[:source]}, you are on the #{layout_name} layout."
    content_tag(:div, greeting, class: 'source-greeting') if session[:source]
  end

  def copyright_generator
    NappyViewTool::Renderer.copyright('Travis Siebenhaar', 'All rights reserved')
  end
end
