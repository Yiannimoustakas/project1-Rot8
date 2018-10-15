class SneakersController < ApplicationController
  def new
    @sneaker = Sneaker.new
  end

  def create
    Sneaker.create sneaker_params #pass in the string version of the form params
    redirect_to(sneakers_path)
  end

  def index
    @sneaker = Sneaker.all
  end

  def show
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

  def edit
    @sneaker = Sneaker.find params[:id]
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
