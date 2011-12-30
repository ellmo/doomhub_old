module NavigationHelpers

  def path_to(page_name)
    case page_name

    when "root"
      root_path
    when "login"
      login_path
    when "logout"
      logout_path
    when "register"
      register_path
    when "reset password"
      new_user_password_path

    else
      begin
        page_name =~ /^(.*)$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
