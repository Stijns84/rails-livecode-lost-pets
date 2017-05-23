class PetsController < ApplicationController
  def index
    @pets = Pet.all
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :color)
  end

end
