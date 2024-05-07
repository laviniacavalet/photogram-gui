class HomeController < ApplicationController

def homepage
  @list_of_users = User.all 
  render({ :template => "user_templates/index" })
end

end
