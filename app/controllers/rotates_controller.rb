class RotatesController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @rotate = Rotate.new
    @sneakers = Sneaker.all
  end

  def create
    @rotate = Rotate.new(rotate_params)
    @rotate.user = @current_user
    @sneakers = Sneaker.all
    @rotate.sneakers << Sneaker.find(params[:sneakers])
    @rotate.save
    # console
    # raise "hell"

    if @rotate.persisted?
      if @rotate.sneakers.length == 7
        # @rotate.save
        redirect_to rotates_path
      end
    else
      flash[:errors] = @rotate.errors.full_messages
      # raise "hell"
      render :new
    end

  end

  def index
    @rotates = Rotate.all.order(:cached_votes_score => :desc)
    if params[:search]
      @search_term = params[:search]
      @rotates = @rotates.search_by(@search_term)
    end
  end

  def show
    @rotate = Rotate.find params[:id]
  end

  def edit
    @rotate = Rotate.find params[:id]
    @sneakers = Sneaker.all
  end

  def update
    @rotate = Rotate.find params[:id]
    @rotate.sneakers.destroy_all
    @sneakers = Sneaker.all
    @rotate.sneakers << Sneaker.find(params[:sneakers])
    @rotate.save
    # console
    # raise "hell"

    unless @rotate.user == @current_user
      flash[:errors] = @rotate.errors.full_messages
      render :edit
    end

    if @rotate.sneakers.length == 7
      # @rotate.save
      if @rotate.update(rotate_params)
        redirect_to( rotate_path( @rotate.id ) )
      end
    else
      flash[:errors] = @rotate.errors.full_messages
      render :edit
    end
    # unless @rotate.user == @current_user
    #   redirect_to(rotates_path)
    #   return
    # end
    #
    #
    # if @rotate.update(rotate_params)
    #   redirect_to( rotate_path( @rotate.id ) )
    # else
    #   flash[:errors] = @rotate.errors.full_messages
    #   render :edit
    # end
  end

  def destroy
    rotate = Rotate.find params[:id]
    rotate.destroy
    redirect_to rotates_path
  end

  def upvote
    @rotate = Rotate.find params[:id]
    @rotate.upvote_from @current_user
    redirect_to rotates_path
  end
  def downvote
    @rotate = Rotate.find params[:id]
    @rotate.downvote_from @current_user
    redirect_to rotates_path
  end

  private
  def rotate_params
    params.require(:rotate).permit(:name, :sneaker_id)
  end

end
