class ProductvariantsController < ApplicationController
  def index
    @productvariants = Productvariant.all

    render("productvariant_templates/index.html.erb")
  end

  def show
    @productvariant = Productvariant.find(params.fetch("id_to_display"))

    render("productvariant_templates/show.html.erb")
  end

  def new_form
    @productvariant = Productvariant.new

    render("productvariant_templates/new_form.html.erb")
  end

  def create_row
    @productvariant = Productvariant.new

    @productvariant.product_id = params.fetch("product_id")
    @productvariant.characteristics = params.fetch("characteristics")

    if @productvariant.valid?
      @productvariant.save

      redirect_back(:fallback_location => "/productvariants", :notice => "Productvariant created successfully.")
    else
      render("productvariant_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @productvariant = Productvariant.find(params.fetch("prefill_with_id"))

    render("productvariant_templates/edit_form.html.erb")
  end

  def update_row
    @productvariant = Productvariant.find(params.fetch("id_to_modify"))

    @productvariant.product_id = params.fetch("product_id")
    @productvariant.characteristics = params.fetch("characteristics")

    if @productvariant.valid?
      @productvariant.save

      redirect_to("/productvariants/#{@productvariant.id}", :notice => "Productvariant updated successfully.")
    else
      render("productvariant_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @productvariant = Productvariant.find(params.fetch("id_to_remove"))

    @productvariant.destroy

    redirect_to("/productvariants", :notice => "Productvariant deleted successfully.")
  end
end
