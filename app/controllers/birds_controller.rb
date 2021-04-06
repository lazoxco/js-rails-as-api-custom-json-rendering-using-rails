class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds, only: [:id, :name, :species]
  end

  def show
    bird = Bird.find_by(id: params[:id])
    # render json: { id: bird.id, name: bird.name, species: bird.species }
      # OR
    #render json: bird.slice(:id, :name, :species) 
      # achieves the same result in a different way
      # OR

    if bird
      render json: birds
    else
      render json: { message: 'Bird not found' }
    end
  end
end