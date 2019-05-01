class ColorsController < ApplicationController
  before_action :find_color, only: [:show, :edit, :update, :destroy]

  def index
    @colors = Color.all
  end

  def show
    #find_color
  end

  def new
    @color = Color.new
  end

  def create
    @color = Color.new(color_params)
    if @color.valid?
      @color.save
      redirect_to color_path(@color)
    else
      @errors = @color.errors.full_messages
      render :new
    end
  end

  def edit
    #find_color
  end

  def update
    if @color.update(color_params)
      redirect_to color_path(@color)
    else
      render :edit
    end

  end

  def destroy
    @color.delete
    redirect_to colors_path
  end
  private

  def color_params
    params.require(:color).permit(:name, :hexcode)
  end

  def find_color
    @color = Color.find(params[:id])
  end
end
