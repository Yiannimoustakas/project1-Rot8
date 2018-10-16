class RotatesController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @rotate = Rotate.new
    @sneakers = Sneaker.all
  end

  def create
    @rotate = Rotate.new(rotate_params)
    @rotate.user = @current_user
    @rotate.save

    # raise 'hell'

    if @rotate.persisted?
      @rotate.sneakers << Sneaker.find(params[:sneakers])
      @rotate.save
      # raise "hell"
      redirect_to rotates_path
    else
      flash[:errors] = @rotate.errors.full_messages
      render :new
    end

  end

  def index
    @rotates = Rotate.all
  end

  def show
    @rotate = Rotate.find params[:id]
  end

  def edit
    @rotate = Rotate.find params[:id]
  end

  def update
    @rotate = Rotate.find params[:id]


    unless @rotate.user == @current_user
      redirect_to(rotates_path)
      return
    end


    if @rotate.update(rotate_params)
      redirect_to( rotate_path( @rotate.id ) )
    else
      flash[:errors] = @rotate.errors.full_messages
      render :edit
    end
  end

  def destroy
    rotate = Rotate.find params[:id]
    rotate.destroy
    redirect_to rotates_path
  end

  private
  def rotate_params
    params.require(:rotate).permit(:name, :sneaker_id)
  end

end
