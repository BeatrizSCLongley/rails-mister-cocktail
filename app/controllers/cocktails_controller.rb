class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    # Need to find cocktail and create a dose instance
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    # @doses = Dose.where(cocktail: @cocktail)
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new' # I had :new ???
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
