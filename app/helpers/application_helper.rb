module ApplicationHelper
=begin
  def display_for(role)
    current_user = User.new
    yield if current_user.in_role?(role)
  end

  class User
    def in_role?(role)
      false
    end
  end
=end
end
