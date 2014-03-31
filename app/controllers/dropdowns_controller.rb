class DropdownsController < ApplicationController
  def index
    @dropdowns = Dropdown.all
  end

  def show
    @dropdown = Dropdown.find(params[:id])
  end

  def new
    @dropdown = Dropdown.new
  end

  def create
    @dropdown = Dropdown.new(dropdown_parameters)
    if @dropdown.save
      redirect_to @dropdown, :notice => "Successfully created dropdown."
    else
      render :action => 'new'
    end
  end

  def edit
    @dropdown = Dropdown.find(params[:id])
  end

  def update
    @dropdown = Dropdown.find(params[:id])
    if @dropdown.update_attributes(dropdown_parameters)
      redirect_to @dropdown, :notice  => "Successfully updated dropdown."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @dropdown = Dropdown.find(params[:id])
    @dropdown.destroy
    redirect_to dropdowns_url, :notice => "Successfully destroyed dropdown."
  end
  private
  def dropdown_parameters
    params.require(:dropdown).permit(:name, :item_id)
  end
end
