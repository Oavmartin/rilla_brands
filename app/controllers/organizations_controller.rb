class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all

    render("organization_templates/index.html.erb")
  end

  def show
    @organization = Organization.find(params.fetch("id_to_display"))

    render("organization_templates/show.html.erb")
  end

  def new_form
    @organization = Organization.new

    render("organization_templates/new_form.html.erb")
  end

  def create_row
    @organization = Organization.new


    if @organization.valid?
      @organization.save

      redirect_back(:fallback_location => "/organizations", :notice => "Organization created successfully.")
    else
      render("organization_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @organization = Organization.find(params.fetch("prefill_with_id"))

    render("organization_templates/edit_form.html.erb")
  end

  def update_row
    @organization = Organization.find(params.fetch("id_to_modify"))


    if @organization.valid?
      @organization.save

      redirect_to("/organizations/#{@organization.id}", :notice => "Organization updated successfully.")
    else
      render("organization_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @organization = Organization.find(params.fetch("id_to_remove"))

    @organization.destroy

    redirect_to("/organizations", :notice => "Organization deleted successfully.")
  end
end
