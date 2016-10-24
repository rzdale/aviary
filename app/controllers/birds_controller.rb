class BirdsController < ApplicationController
  def index
    render json: Bird.all
  end

  def show
    render json: Bird.find(params[:id])
  end

  def create
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

end
