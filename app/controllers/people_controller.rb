class PeopleController < ApplicationController
  def index
    @people = Person.order(:id)
    render "index.json.jbuilder"
  end

  def show
    @people = Person.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end

