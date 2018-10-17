class SneakersController < ApplicationController
  def new
    @sneaker = Sneaker.new
  end

  def create
    @sneaker = Sneaker.new(sneaker_params)
    if params[:file].present?
      response = Cloudinary::Uploader.upload params[:file]
      @sneaker.image = response["public_id"]
    end
    @sneaker.save
    redirect_to @sneaker, notice: 'Sneaker was successfully created'
  end

  def index
    @sneaker = Sneaker.all
    if params[:search]
      @search_term = params[:search]
      @sneaker = @sneaker.search_by(@search_term)
    end
  end

  def show
    @sneaker = Sneaker.find params[:id]
  end

  def edit
    @sneaker = Sneaker.find params[:id]
  end

  def update
    @sneaker = Sneaker.find params[:id]
    @sneaker.save

    if @sneaker.update(sneaker_params)
      redirect_to( sneaker_path( @sneaker.id ) )
    else
      flash[:errors] = @sneaker.errors.full_messages
      render :edit
    end
  end

  def destroy
    sneaker = Sneaker.find params[:id]
    sneaker.destroy
    redirect_to sneakers_path
  end

  private
  def sneaker_params
    params.require(:sneaker).permit(:name, :silhouette, :colorway, :released, :retail_price, :image, :brand_id)
  end

end
