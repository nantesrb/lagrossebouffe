class RecipesController < ApplicationController

  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  # Récupère l'ensemble des recettes, triées par dates de création décroissantes.
  # Route : GET /receipts
  def index
    @receipts = Recipe.order(created_at: :desc)
  end

  # Récupère une annonce à partir de son identifiant.
  # Route : GET /receipts/:id
  def show
  end

  # Prépare une nouvelle annonce vide, prête à être remplie par l'utilisateur
  # Route : GET /receipts/new
  def new
    @recipe = Recipe.new
  end

  # Publie une annonce saisie par l'utilisateur
  # Route : POST /receipts
  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def update
    @recipe.update(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end


private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      :time,
      :description,
      :difficulty,
      :ingredient,
      :price,
      :image
    )
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

end
