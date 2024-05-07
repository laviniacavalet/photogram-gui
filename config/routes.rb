Rails.application.routes.draw do

get("/", { :controller => "home", :action => "homepage" })
get("/users", { :controller => "users", :action => "index" })
get("/users/:path_username", { :controller => "users", :action => "show" })
post("/add_user", { :controller => "users", :action => "add" })
post("/edit_user/:modify_id", { :controller => "users", :action => "edit" })

get("/photos", { :controller => "photos", :action => "index" })
get("/photos/:path_id", { :controller => "photos", :action => "show" })
get("/delete_photo/:toast_id",{ :controller => "photos", :action => "bye" })
get("/insert_photo",{ :controller => "photos", :action => "create" })
post("/update_photo/:modify_id",{ :controller => "photos", :action => "update" })
post("/add_comment", { :controller => "photos", :action => "comment" })

end
