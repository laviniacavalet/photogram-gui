class UsersController < ApplicationController
  def index
  matching_users = User.all
  @a_new_user = User.new 
  @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index" })
  end

  def show
   url_username = params.fetch("path_username")

   matching_username = User.where({ :username => url_username })

   @the_user = matching_username.at(0)
    render({ :template => "user_templates/show" }) 
  end

  def add
    input_username = params[:input_username]  # Fetching from form data, not URL parameter

    a_new_user = User.new
    a_new_user.username = input_username
  
    a_new_user.save
  
    redirect_to("/users/" + a_new_user.username.to_s)
  end

  def edit

    the_id = params.fetch("modify_id")

    matching_users = User.where({ :id => the_id })
  
    the_user = matching_users.at(0)
  
    input_username = params.fetch("query_username")
  
    the_user.username = input_username

    the_user.save
  
    redirect_to("/users/" + the_user.username.to_s)

  end
end
