class BirdsController < ApplicationController
  def index
    render json: Bird.all
  end

  def show
    render json: Bird.find(params[:id])
  end

  def create
    puts "got into the method!!!!!!!!!!!!!!!!!!!!!!"
    newbird = Bird.new(
                name: params[:name],
                conservation_status: params[:conservation_status],
                order: params[:order],
                family: params[:family],
                genus: params[:genus]
              )

    if newbird.save
      render json: newbird
    else
      render json: newbird.errors
    end
  end

  def update
    bird = Bird.find(params[:id])
    
    bird.update(
                name: params[:name],
                conservation_status: params[:conservation_status],
                order: params[:order],
                family: params[:family],
                genus: params[:genus]
              )
  
    if bird.save
      render json: bird
    else
      render json: bird.errors
    end
  end
  
  def delete
    bird = Bird.find(params[:id])
    
    bird.destroy
  end

  def test
  end

end
