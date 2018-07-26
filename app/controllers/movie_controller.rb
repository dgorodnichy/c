# frozen_string_literal: true

class MovieController < ApplicationController
  def index;
    if params[:query]
      result = Search.new(params[:query]).call
      render partial: 'movies_grid', locals: { result: result }
    else
      []
    end
  end

  def show; end
end
