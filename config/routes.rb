Rails.application.routes.draw do
  # Routes for the Brand resource:

  # CREATE
  get("/brands/new", { :controller => "brands", :action => "new_form" })
  post("/create_brand", { :controller => "brands", :action => "create_row" })

  # READ
  get("/brands", { :controller => "brands", :action => "index" })
  get("/brands/:id_to_display", { :controller => "brands", :action => "show" })

  # UPDATE
  get("/brands/:prefill_with_id/edit", { :controller => "brands", :action => "edit_form" })
  post("/update_brand/:id_to_modify", { :controller => "brands", :action => "update_row" })

  # DELETE
  get("/delete_brand/:id_to_remove", { :controller => "brands", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
