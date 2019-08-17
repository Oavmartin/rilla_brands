Rails.application.routes.draw do
  # Routes for the Productvariant resource:

  # CREATE
  get("/productvariants/new", { :controller => "productvariants", :action => "new_form" })
  post("/create_productvariant", { :controller => "productvariants", :action => "create_row" })

  # READ
  get("/productvariants", { :controller => "productvariants", :action => "index" })
  get("/productvariants/:id_to_display", { :controller => "productvariants", :action => "show" })

  # UPDATE
  get("/productvariants/:prefill_with_id/edit", { :controller => "productvariants", :action => "edit_form" })
  post("/update_productvariant/:id_to_modify", { :controller => "productvariants", :action => "update_row" })

  # DELETE
  get("/delete_productvariant/:id_to_remove", { :controller => "productvariants", :action => "destroy_row" })

  #------------------------------

  # Routes for the Productline resource:

  # CREATE
  get("/productlines/new", { :controller => "productlines", :action => "new_form" })
  post("/create_productline", { :controller => "productlines", :action => "create_row" })

  # READ
  get("/productlines", { :controller => "productlines", :action => "index" })
  get("/productlines/:id_to_display", { :controller => "productlines", :action => "show" })

  # UPDATE
  get("/productlines/:prefill_with_id/edit", { :controller => "productlines", :action => "edit_form" })
  post("/update_productline/:id_to_modify", { :controller => "productlines", :action => "update_row" })

  # DELETE
  get("/delete_productline/:id_to_remove", { :controller => "productlines", :action => "destroy_row" })

  #------------------------------

  # Routes for the Product resource:

  # CREATE
  get("/products/new", { :controller => "products", :action => "new_form" })
  post("/create_product", { :controller => "products", :action => "create_row" })

  # READ
  get("/products", { :controller => "products", :action => "index" })
  get("/products/:id_to_display", { :controller => "products", :action => "show" })

  # UPDATE
  get("/products/:prefill_with_id/edit", { :controller => "products", :action => "edit_form" })
  post("/update_product/:id_to_modify", { :controller => "products", :action => "update_row" })

  # DELETE
  get("/delete_product/:id_to_remove", { :controller => "products", :action => "destroy_row" })

  #------------------------------

  # Routes for the Organization resource:

  # CREATE
  get("/organizations/new", { :controller => "organizations", :action => "new_form" })
  post("/create_organization", { :controller => "organizations", :action => "create_row" })

  # READ
  get("/organizations", { :controller => "organizations", :action => "index" })
  get("/organizations/:id_to_display", { :controller => "organizations", :action => "show" })

  # UPDATE
  get("/organizations/:prefill_with_id/edit", { :controller => "organizations", :action => "edit_form" })
  post("/update_organization/:id_to_modify", { :controller => "organizations", :action => "update_row" })

  # DELETE
  get("/delete_organization/:id_to_remove", { :controller => "organizations", :action => "destroy_row" })

  #------------------------------

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
