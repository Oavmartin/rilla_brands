class BrandsController < ApplicationController
  def index
    @brands = Brand.all

    render("brand_templates/index.html.erb")
  end

  def show
    @productline = Productline.new
    @brand = Brand.find(params.fetch("id_to_display"))

    render("brand_templates/show.html.erb")
  end

  def new_form
    @brand = Brand.new

    render("brand_templates/new_form.html.erb")
  end

  def create_row
    @brand = Brand.new

    @brand.name = params.fetch("name")
    @brand.organization_id = params.fetch("organization_id")
    @brand.characteristics = params.fetch("characteristics")

    if @brand.valid?
      @brand.save

      redirect_back(:fallback_location => "/brands", :notice => "Brand created successfully.")
    else
      render("brand_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_organization
    @brand = Brand.new

    @brand.name = params.fetch("name")
    @brand.organization_id = params.fetch("organization_id")
    @brand.characteristics = params.fetch("characteristics")

    if @brand.valid?
      @brand.save

      redirect_to("/organizations/#{@brand.organization_id}", notice: "Brand created successfully.")
    else
      render("brand_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @brand = Brand.find(params.fetch("prefill_with_id"))

    render("brand_templates/edit_form.html.erb")
  end

  def update_row
    @brand = Brand.find(params.fetch("id_to_modify"))

    @brand.name = params.fetch("name")
    @brand.organization_id = params.fetch("organization_id")
    @brand.characteristics = params.fetch("characteristics")

    if @brand.valid?
      @brand.save

      redirect_to("/brands/#{@brand.id}", :notice => "Brand updated successfully.")
    else
      render("brand_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_organization
    @brand = Brand.find(params.fetch("id_to_remove"))

    @brand.destroy

    redirect_to("/organizations/#{@brand.organization_id}", notice: "Brand deleted successfully.")
  end

  def destroy_row
    @brand = Brand.find(params.fetch("id_to_remove"))

    @brand.destroy

    redirect_to("/brands", :notice => "Brand deleted successfully.")
  end
end
