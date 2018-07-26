# frozen_string_literal: true

class MovieController < ApplicationController
  def index; end

  def show; end

  def search
    result = Search.new(params[:query]).call
    render partial: 'movies_grid', locals: { result: result }
  end
end
