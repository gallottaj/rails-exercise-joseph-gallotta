class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.order(:id)
    render "index.json.jbuilder"
  end

  def show
    @organizations = Organization.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end



