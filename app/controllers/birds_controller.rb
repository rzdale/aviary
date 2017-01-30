class BirdsController < ApplicationController
  
  
  before_action :set_bird, only: [:show, :update, :destroy]
  
  
  def index
    render json: Bird.all
  end

  def show
    render json: @bird
  end

  def create
    newbird = Bird.new(bird_params)

    if newbird.save
      render json: newbird
    else
      render json: newbird.errors
    end
  end

  def update
    @bird.update(bird_params)
  
    if @bird.save
      render json: @bird
    else
      render json: @bird.errors
    end
  end
  
  def destroy
    @bird.destroy
    
    head :no_content
  end

  def test
  end
  
  
  private
  
  def set_bird
    @bird = Bird.find(params[:id])
  end
  
  def bird_params
    params.permit(:name, :conservation_status, :order, :family, :genus)
  end

end
