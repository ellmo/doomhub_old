module ApplicationHelper

  def user_login_span_tag(user = nil)
    str = "[ "
    if user
      str << "Hello, #{user.login}. | "
      str << link_to("Log Out", logout_path)
      str << " ]"
    else
      str << link_to("Log in", login_path)
      str << " | "
      str << link_to("Register", register_path)
      str << " ]"
    end
    raw str
  end

end
