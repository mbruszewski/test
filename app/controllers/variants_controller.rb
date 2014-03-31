class VariantsController < ApplicationController
  def index
    @variants = Variant.all
  end

  def show
    @variant = Variant.find(params[:id])
  end

  def new
    @variant = Variant.new
  end

  def create
    @variant = Variant.new(variant_parameters)
    if @variant.save
      redirect_to @variant, :notice => "Successfully created variant."
    else
      render :action => 'new'
    end
  end

  def edit
    @variant = Variant.find(params[:id])
  end

  def update
    @variant = Variant.find(params[:id])
    if @variant.update_attributes(variant_parameters)
      redirect_to @variant, :notice  => "Successfully updated variant."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @variant = Variant.find(params[:id])
    @variant.destroy
    redirect_to variants_url, :notice => "Successfully destroyed variant."
  end
  private
  def variant_parameters
    params.require[:variant].permit(:name, :dropdown_id)
  end
end
