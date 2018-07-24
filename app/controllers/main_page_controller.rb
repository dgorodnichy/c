class MainPageController < ApplicationController
  def index

  end

  def search
    result = Search.new(params[:query]).call
    render json: result
  end
end
