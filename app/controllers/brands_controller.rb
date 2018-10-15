class BrandsController < ApplicationController
  def new
    @brand = Brand.new
  end

  def create
    Brand.create(brand_params)
    redirect_to brands_path
  end

  def index
    @brand = Brand.all
  end

  def show
    @brand = Brand.find params[:id]
  end

  def update
    @brand = Brand.find params[:id]
    @brand.save

    if @brand.update(brand_params)
      redirect_to( brand_path( @brand.id ) )
    else
      flash[:errors] = @brand.errors.full_messages
      render :edit
    end
  end

  def edit
    @brand = Brand.find params[:id]
  end

  def destroy
    brand = Brand.find params[:id]
    brand.destroy
    redirect_to brands_path
  end

  private
  def brand_params
    params.require(:brand).permit(:name, :founded, :ceo, :hq, :image)
  end

end
