class ProductlinesController < ApplicationController
  def index
    @productlines = Productline.page(params[:page]).per(10)

    render("productline_templates/index.html.erb")
  end

  def show
    @product = Product.new
    @productline = Productline.find(params.fetch("id_to_display"))

    render("productline_templates/show.html.erb")
  end

  def new_form
    @productline = Productline.new

    render("productline_templates/new_form.html.erb")
  end

  def create_row
    @productline = Productline.new

    @productline.brand_id = params.fetch("brand_id")
    @productline.name = params.fetch("name")
    @productline.characteristics = params.fetch("characteristics")

    if @productline.valid?
      @productline.save

      redirect_back(:fallback_location => "/productlines", :notice => "Productline created successfully.")
    else
      render("productline_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_brand
    @productline = Productline.new

    @productline.brand_id = params.fetch("brand_id")
    @productline.name = params.fetch("name")
    @productline.characteristics = params.fetch("characteristics")

    if @productline.valid?
      @productline.save

      redirect_to("/brands/#{@productline.brand_id}", notice: "Productline created successfully.")
    else
      render("productline_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @productline = Productline.find(params.fetch("prefill_with_id"))

    render("productline_templates/edit_form.html.erb")
  end

  def update_row
    @productline = Productline.find(params.fetch("id_to_modify"))

    @productline.brand_id = params.fetch("brand_id")
    @productline.name = params.fetch("name")
    @productline.characteristics = params.fetch("characteristics")

    if @productline.valid?
      @productline.save

      redirect_to("/productlines/#{@productline.id}", :notice => "Productline updated successfully.")
    else
      render("productline_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_brand
    @productline = Productline.find(params.fetch("id_to_remove"))

    @productline.destroy

    redirect_to("/brands/#{@productline.brand_id}", notice: "Productline deleted successfully.")
  end

  def destroy_row
    @productline = Productline.find(params.fetch("id_to_remove"))

    @productline.destroy

    redirect_to("/productlines", :notice => "Productline deleted successfully.")
  end
end
